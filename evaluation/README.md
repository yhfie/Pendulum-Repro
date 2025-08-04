# Introduction

This is the evaluation artifact of Pendulum.

# Subjects

In subjects/, "\<subject\>_unsafe" contains the original (vulnerable) subjects and the fixes by Pendulum, and "\<subject\>_dev" contains the developer fix. Not all subjects have a developer fix.

# Replication

## Running QFuzz and Pendulum

First, `cd scripts`. Then run the following scripts in this order:

* `compile_and_instr_all.sh`: compiles and instruments all subjects.
* `fuzz_all_orig.sh`: runs QFuzz for all subjects, after which each subject has the fuzzer output folders `fuzzer-out-{1,2,3}/`. The QFuzz log files in the folders are `server-log.txt`. There are several parameters at the beginning of the script:
  * `number_of_runs`: the number of fuzz campaigns to run for each subject, 3 by default
  * `time_bound`: timeout of each fuzz campaign (in seconds), 1800 by default
  * `driver`: the fuzz driver class; **no need to modify**
  * `n_cores`: the maximum allowed parallelism, `nproc` by default
  * `port`: the lowest port to use; the script will search for free ports starting from this. 7006 by default

  Be prepared that this script would fire up multiple background processes. For convenience, it also displays commands that can be used to kill the processes.
* `fix_and_compile_and_instr_all.sh`: uses Pendulum to repair each subject. The repaired source files are then compiled and instrumented.
* `fuzz_all_fixed.sh`: fuzzes the repaired source files to check if vulnerability is mitigated. This has the same parameters with `fuzz_all_orig.sh`. Output folders are `fuzzer-out_fixed-{1,2,3}/`.

Additionally, `fuzz_all_dev.sh` fuzzes all developer fixes and has the same parameters with `fuzz_all_orig.sh`.

## Collecting Results

The number of partitions (as per the maximum in the three fuzzing runs) in the original program, the Pendulum-repaired version, and the developer-repaired version can be collected with `count_all_orig.sh`, `count_all_fixed.sh`, and `count_all_dev.sh`, respectively.

# Running Individual Subjects

You may want to run an individual subject instead of the whole experiment. In this case, use the `makefile` in each subject directory.

The makefiles display a help message if you specify no target. You can also check the "Quick Trial" section in [the main README](../README.md#quick-trial) for detailed usage.

# DifFuzzAR Evaluation

The baseline we compare against is DifFuzzAR (ieeexplore.ieee.org/document/9680283). The subjects for DifFuzzAR are in `diffuzzar_subjects`.

In `scripts/`, the scripts with the `diffuzzar_` prefix, e.g., `diffuzzar_fuzz_all_fixed.sh`, are for evaluating DifFuzzAR.

Every DifFuzzAR subject also comes with a `makefile` for quick trial.
