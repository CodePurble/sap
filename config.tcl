
set ::env(DESIGN_NAME) {top}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(CELL_PAD) 2
# set ::env(FP_CORE_UTIL) 30
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 100 100"
# set ::env(PL_TARGET_DENSITY) 0.73

set ::env(DESIGN_IS_CORE) {1}

set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
