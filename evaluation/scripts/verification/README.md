# Introduction

In any subject directory, e.g., evaluation/subjects/Eclipse_jetty_4, to formally verify that src/
and src_fixed/ have equivalent functionality, follow these steps:

1. make sure to repair the program with Pendulum to get src_fixed/;

2. build symdiff/ as documented in there;

3. run verify.sh *in the subject directory*.

The verification result would be in /path/to/subject/verification/symdiff.log.
