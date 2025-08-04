##### Directory Configuration
src := src
bin := bin
bin-instr := bin-instr
src_fixed := src_fixed
bin_fixed := bin_fixed
bin-instr_fixed := bin-instr_fixed
extra_cp := lib/*# classpath other than $(src) (joined with colon)
evo_src := evosuite-tests
evo_bin := evosuite-tests-bin


##### Fuzzing Configuration

# port to be used by Kelinci server and interface
# specify with env var KELINCI_PORT; 7007 if not specified
port := $(if $(KELINCI_PORT),$(KELINCI_PORT),7007)  

K_VALUE := 100
fuzz_in_dir := in_dir
fuzz_log := server.log
fuzz_log_fixed := server.fixed.log
fuzz_out_dir := fuzzer-out
fuzz_out_dir_fixed := fuzzer-out_fixed

kelinci_class := edu.cmu.sv.kelinci.Kelinci
drivermain_class := sg.edu.nus.comp.tsunami.DriverMain
driver_class := QDriver
driver_stem := $(subst .,/,$(driver_class))


##### Tools
tools := ../../../tool
afl := $(tools)/afl-2.51b-qfuzz/afl-fuzz
interface := $(tools)/fuzzerside/interface
kelinci := $(tools)/instrumentor/build/libs/kelinci.jar
pendulum := $(tools)/pendulum/build/libs/pendulum.jar
evosuite_libs := $(tools)/validation/lib/*

javac := javac
java := java

instrumentor_class := edu.cmu.sv.kelinci.instrumentor.Instrumentor
pendulum_class := sg.edu.nus.comp.tsunami.Pendulum
helper_class := sg.edu.nus.comp.tsunami.safe.Safe

#### Help
.DEFAULT_GOAL := help
.PHONY: help
# copied from https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

##### Compilation

.PHONY: compile compile_fixed
compile: $(shell find $(src) -name *.java | sed -e 's@^$(src)@$(bin)@' -e 's@.java$$@.class@')  ## Compile the original source code to bytecode

compile_fixed: $(shell find $(src_fixed) -name *.java 2>/dev/null | sed -e 's@^$(src_fixed)@$(bin_fixed)@' -e 's@.java$$@.class@')  ## Compile the fixed source code to bytecode

$(bin)/%.class: $(src)/%.java
	@mkdir -p $(bin)
	$(javac) -cp "$(src):$(kelinci):$(pendulum):$(extra_cp)" $< -d $(bin)

$(bin_fixed)/%.class: $(src_fixed)/%.java
	@mkdir -p $(bin_fixed)
	$(javac) -cp "$(src_fixed):$(kelinci):$(pendulum):$(extra_cp)" $< -d $(bin_fixed)

##### Instrumentation

.PHONY: instr instr_fixed
instr: compile $(shell find $(src) -name *.java | sed -e 's@^$(src)@$(bin-instr)@' -e 's@.java$$@.class@')  ## Instrument the original bytecode for fuzzing

instr_fixed: compile_fixed $(shell find $(src) -name *.java | sed -e 's@^$(src)@$(bin-instr_fixed)@' -e 's@.java$$@.class@')  ## Instrument the fixed bytecode for fuzzing

$(bin-instr)/%.class: $(bin)/%.class
	$(java) -cp $(kelinci) $(instrumentor_class) -i $(bin) -o $(bin-instr)

$(bin-instr_fixed)/%.class: $(bin_fixed)/%.class
	$(java) -cp $(kelinci) $(instrumentor_class) -i $(bin_fixed) -o $(bin-instr_fixed)


.PHONY: testfuzz
testfuzz: instr  ## Test if compilation and instrumentation of original source code succeeded
	$(java) -cp "$(bin-instr):$(extra_cp):$(pendulum)" $(driver_class)

##### Repair

.PHONY: repair
helper_stem := $(subst .,/,$(helper_class))
helper_dir := $(dir $(helper_stem))
repair:  ## Repair the timing side channel vulnerability in the original source code using Pendulum
	if [ "$$(make -f $(firstword $(MAKEFILE_LIST)) -q instr)" -ne 0 ]; then \
        echo "WARNING: the binaries and instrumented binaries are not up to date."; \
    fi
	$(java) -cp "$(bin):$(src):$(pendulum):$(kelinci):$(extra_cp)" -DANTLR_USE_DIRECT_CLASS_LOADING=true $(pendulum_class) -o $(src_fixed) -f $(fuzz_log)
	mkdir -p $(src_fixed)/$(helper_dir)
	cp $(tools)/pendulum/src/main/java/$(helper_stem).java $(src_fixed)/$(helper_dir)
	rsync -av --ignore-existing $(src)/* $(src_fixed) >/dev/null

##### Fuzzing

.PHONY: server server_fixed fuzz fuzz_fixed cluster cluster_fixed
server: instr  ## Start Kelinci server for the (instrumented) original bytecode
	$(java) -cp "$(bin-instr):$(pendulum):$(extra_cp)" \
    $(kelinci_class) -port $(port) -K $(K_VALUE) \
    $(drivermain_class) $(driver_class) @@ | tee $(fuzz_log)

server_fixed: instr_fixed  ## Start Kelinci server for the (instrumented) fixed bytecode
	$(java) -cp "$(bin-instr_fixed):$(pendulum):$(extra_cp)" \
    $(kelinci_class) -port $(port) -K $(K_VALUE) \
    $(drivermain_class) $(driver_class) @@ | tee $(fuzz_log_fixed)

fuzz:  ## Start AFL to fuzz the (Kelinci server of) original code
	$(afl) -i $(fuzz_in_dir) -o $(fuzz_out_dir) \
	-c quantify -K $(K_VALUE) -S afl -t 999999 \
	$(interface) -p $(port) -K $(K_VALUE) @@

fuzz_fixed:  ## Start AFL to fuzz the (Kelinci server of) fixed code
	$(afl) -i $(fuzz_in_dir) -o $(fuzz_out_dir_fixed) \
	-c quantify -K $(K_VALUE) -S afl -t 999999 \
	$(interface) -p $(port) -K $(K_VALUE) @@

count: $(fuzz_log) ## Retrieve the largest number of partitions from the log file (for the original code)
	@grep -Po '#clusters=\K[0-9]+' $(fuzz_log) | sort -rn | head -n 1

count_fixed: $(fuzz_log_fixed) ## Retrieve the largest number of partitions from the log file (for the fixed code)
	@grep -Po '#clusters=\K[0-9]+' $(fuzz_log_fixed) | sort -rn | head -n 1

##### Regression Testing

.PHONY: compile_evo run_evo run_evo_fixed

CUT := $(shell cat CLASS_UNDER_TEST)
evo_stem := $(subst .,/,$(CUT))
evo_test := $(evo_src)/$(evo_stem)_ESTest.java
evo_scaffold := $(evo_src)/$(evo_stem)_ESTest_scaffolding.java

compile_evo: $(evo_test) $(evo_scaffold) compile ## Compile Evosuite tests
	@mkdir -p evosuite-tests-bin
	$(javac) -cp "$(evosuite_libs):$(bin):$(extra_cp)" $(evo_test) $(evo_scaffold) -d $(evo_bin)

evo_testclass := $(CUT)_ESTest
run_evo: compile_evo compile  ## Run Evosuite tests on the original code
	$(java) -cp "$(evosuite_libs):$(evo_bin):$(bin):$(extra_cp)" org.junit.runner.JUnitCore $(evo_testclass)

run_evo_fixed: compile_evo compile_fixed  ## Run Evosuite tests on the fixed code
	$(java) -cp "$(evosuite_libs):$(evo_bin):$(bin_fixed):$(extra_cp)" org.junit.runner.JUnitCore $(evo_testclass)

##### Clean

.PHONY: clean cleanbin cleansrc
clean: cleanbin cleansrc cleanfuzz  ## Clean up

cleanbin:  ## Clean up all bytecode
	-rm -rf $(bin) $(bin-instr) $(bin_fixed) $(bin-instr_fixed) 

cleansrc:  ## Clean up fixed source code
	-rm -rf $(src_fixed)

cleanfuzz:  ## Clean up fuzzer artifacts (AFL output dir and log file)
	-rm -rf $(fuzz_out_dir) $(fuzz_out_dir_fixed)
	-rm -i $(fuzz_log) $(fuzz_log_fixed) 
