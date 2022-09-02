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

# Running Individual Subjects (Recommended)

You may want to run an individual subject instead of the whole experiment. In this case, use the `makefile` in each subject directory.

This is also the way we recommend. Running the whole experiment is time-consuming, and the scripts tend to break if you do not run the experiments in full.

The makefiles display a help message if you specify no target. You can also check the "Quick Trial" section in [the main README](../README.md#quick-trial) for detailed usage.

# DifFuzzAR Evaluation

The baseline we compare against is DifFuzzAR (ieeexplore.ieee.org/document/9680283). The subjects for DifFuzzAR are in `diffuzzar_subjects`.

In `scripts/`, the scripts with the `diffuzzar_` prefix, e.g., `diffuzzar_fuzz_all_fixed.sh`, are for evaluating DifFuzzAR.

Every DifFuzzAR subject also comes with a `makefile` for quick trial.

## Note

* Do not try to compile or fuzz the original program in DifFuzzAR subjects; we don't provide a script for this, and you shouldn't attempt to do this with the `makefile` (that is, the `compile`, `instr`, `server`, and `fuzz` targets), either. This is because the `Driver_DifFuzzAR.java` does not necessarily compile; it serves only to tell DifFuzzAR which method to fix. In `diffuzzar_fix_and_compile_and_instr.sh`, the `Driver_DifFuzzAR.java` is removed from `src_fixed/`, so the fixed version can be compiled and fuzzed.

* Every `src_fixed/` is version-controlled with git, and the committed version is the one we used for our experiment. After running `diffuzzar_fix_and_compile_and_instr.sh`, however, you will find in `git status` that `src_fixed` has a changed file in themis_openmrs-core, themis_orientdb, themis_pac4j_unsafe_ext, shiro_hashEquals, and themis_oacc. This is because DifFuzzAR produces uncompilable repairs for these subjects; we made these compile by cleaning up the faulty import statements DifFuzzAR introduced, and we committed the cleaned files. So if you want to test out DifFuzzAR's repairs for them, use the git-committed version. `diffuzzar_fuzz_all_fixed` does not fuzz these five, so you may want to use the `makefile`s.
