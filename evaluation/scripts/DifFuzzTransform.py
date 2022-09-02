#!/usr/bin/env python3

from pathlib import Path
import sys
import os


DifFuzzAR_TAG = "$Modification"


def find_modified_file_path(dir):
    modified_files = list(Path(dir).rglob("*" + DifFuzzAR_TAG + ".java"))
    assert len(modified_files) == 1
    return modified_files[0]


def process_file(file_path):
    with open(file_path) as f:
        lines = f.readlines()

    # Find the modified class name, and remove the tag in class name
    for line_no, line in enumerate(lines):
        if DifFuzzAR_TAG in line:
            words = line.split()
            for idx, word in enumerate(words):
                if DifFuzzAR_TAG in word:
                    break
            if words[idx - 1] == "class":
                lines[line_no] = line.replace(DifFuzzAR_TAG, "")

    # Swap old and $Modified method declarations, tag old ones with $Old
    for line_no, line in enumerate(lines):
        if DifFuzzAR_TAG in line:
            old_line = line.replace(DifFuzzAR_TAG, "")
            # a modified line can be:
            # 1. a constructor declaration. In this case, there is no corresponding
            #    "old line"; simply remove the $Modificaiton tag.
            # 2. a method which is "repaired" by DifFuzzAR. In this case, there
            #    is a corresponding "old line"; tag the old line with $Old tag,
            #    and remove the $Modification tag added by DifFuzzAR.
            if old_line in lines:
                old_line_no = lines.index(old_line)
                lines[old_line_no] = line.replace(DifFuzzAR_TAG, r"$Old")
            lines[line_no] = old_line

    return "".join(lines)


def transform(dir, out_dir):
    modified_path = find_modified_file_path(dir)
    rel_path = os.path.relpath(modified_path, dir)
    out_path = out_dir / rel_path.replace(DifFuzzAR_TAG, "")

    s = process_file(modified_path)
    out_path.parent.mkdir(exist_ok=True, parents=True)
    out_path.write_text(s)


def main():
    dir = Path(sys.argv[1])
    out_dir = Path(sys.argv[2])
    transform(dir, out_dir)


if __name__ == '__main__':
    main()
