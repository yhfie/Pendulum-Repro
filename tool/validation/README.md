# Introduction

This is to perform regression tests on the repair generated with Pendulum. EvoSuite is used to generate a test suite. We report the number of passing and failing tests, as well as the time spent executing the test suite. This directory also contains information about patch sizes.

# Artifacts & Scripts

## Regression Test

Before running the following scripts, first run `evaluation/scripts/compile_and_instr_all.sh` and `evaluation/scripts/diffuzzar_fix_and_compile_and_instr_all.sh` to compile the subjects.

* `generate_tests.sh`: generates EvoSuite test suites for all subjects. **No need to run again**.
* `compile_tests.sh`: compiles the EvoSuite test suites for all subjects.
* `run_tests.sh`, `run_tests_fixed.sh`: runs regression tests for the original subjects and their Pendulum-repaired versions.
* `perf_time_{orig, fixed, dev}.sh`: measures the execution time of the test suite for the original subject, the Pendulum-repaired version, and the developer-repaired version.

Scripts starting with `diffuzzar_` are for DifFuzzAR subjects.

## Patch Size

* `count_loc/`: artifact for counting lines of code (LoC) in the original subjects, the Pendulum-repaired version, and the developer fix
  * `original/`: source files of original subjects, the Pendulum-repaired version, and the developer fix
  * `comments_removed/`: all files in `original/`, purged of comments
  * `reformatted`: all files in `comments_removed/`, reformatted with `google-java-format`

* `collect_src.sh`: collects the source files from evaluation/subjects into `count_loc/`. **No need to run again**.

# Regression-Testing Individual Subjects

To run regression tests for an individual subject, go to the subject directory in `evaluation/subjects`, and use `makefile`.

The makefiles display a help message if you specify no target. You can also check the "Quick Trial" section in [the main README](../../README.md#quick-trial) for detailed usage.
