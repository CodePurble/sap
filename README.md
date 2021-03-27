# sap

SAP Computers in Verilog

**(Note that this project is still a WIP and may not work as inteded)**

# Workflow

-   Please use `iverilog` to compile and test your code. To view waveforms, use a program like `gtkwave`.

-   Please give meaningful commit messages :P

-   To sync your local repo with this one, run `git pull origin master` in the root of your repo

## Directory structure

    .
    ├── README.md
    ├── hdl
    │   └── dff_posedge.v
    ├── simulation
    └── test
        └── tb_dff_posedge.v

-   All Verilog modules go in the `hdl` directory
    -   Only **ONE** Verilog module per `.v` file
-   All Verilog test-benches go in the `test` directory
    -   Filenames should be prefixed with `tb`
        -   E.g. `dff_posedge.v - tb_dff_posedge.v`
    -   Output files after compilation also go here, give them the `.out` extension
-   All Verilog simulation output (`vcd` dumps for waveforms etc.) go in the `simulation` directory

Do take a look at the `dff_posedge` example module.

## Compilation

There are two helper scripts to simplify this step

To compile, use the `compile.sh` script. Usage is as follows:

``` {.sh}
# To compile all files in the test/ directory
$ ./compile.sh

# To compile select files
$ ./compile.sh FILE1 FILE2 ...
```

To run compiled files, use the `run.sh` script. Usage is as follows:

``` {.sh}
# To run all compiled files in the test/ directory
$ ./run.sh

# To run select files
$ ./run.sh FILE1 FILE2 ...
```

To open waveform dump (gtkwave is used here): `gtkwave <path-to-vcd-file>`

# Notes

## Control signals

-   PC
    -   C_P - Count enable
    -   E_P - Output enable
    -   CLR - Async reset
-   MAR
    -   L_M' - Load
-   RAM
    -   CE' - Chip enable
-   IR
    -   L_I' - Load
    -   E_I' - Output enable
    -   CLR - Async clear
-   ACCUMULATOR
    -   E_A - Output enable
    -   L_A - Load
-   ADDER/SUBTRACTOR
    -   S_U - Subtract
    -   E_U - Output enable
-   B REG
    -   L_B' - Load B
-   OUTPUT REG
    -   L_O' - Load output
