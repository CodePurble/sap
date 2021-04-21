# SAP-1 Computer in Verilog HDL

## Verilog HDL

Verilog Hardware Description Language is a text-based description of a circuit. 
It is used to compile the description to verify the logic and also simulate the logic to verify it's functionality.

+  Please use `iverilog` to compile and test the codes. To view waveforms, use a program like `gtkwave`.

## Introduction to SAP

SAP (Simple-As-Possible)-1 Computer is an 8-bit computer capable of performing simple operations such as add and subtract two numbers. 

SAP employs a processing unit (ALU + Registers), a control unit, memory to store data and instructions and a central bus. 

It is a **stored-program** computer in which fetch and execute cycles occur separately as they share a common bus. 

It is built using the bottom-up approach where all the sub-modules are constructed initially and finally assembled to deploy a working computer.

## SAP-1 Architecture

The figure below represents the architecture of SAP-1 computer.

![SAP-1 Architecture]()

The architecture of SAP-1 has the following components:
* Program Counter
* Memory Address Register 
* Memory 
* Instruction Register
* Controller-Sequencer 
* Accumulator
* Adder-Subtractor
* B-Register
* Output Register

## SAP-1 Instruction Set

![Instruction]()

An instruction set is necessary to program the counter. The table below describes the functionality of each instruction.

| Mnemonic | Operation |
|:---:|:---:|
|LDA|Load RAM data into Accumulator|
|ADD|Add RAM data into Accumulator|
|SUB|Subtract RAM data from Accumulator|
|OUT|Load Accumulator data into Output Register|
|HLT|Stop processing|

## SAP-1 Op-Code

Each instruction has a binary equivalent op-code which must be loaded to the computer's memory. The table below represents each instruction along with it's op-code.

| Mnemonic | Op-code |
|:---:|:---:|
|LDA|0000|
|ADD|0001|
|SUB|0010|
|OUT|1110|
|HLT|1111|

## SAP-1 Working

### The Fetch & Execute Cycle

Every instruction and required data has to be fetched from the memory. 

Correspondingly, the processor executes the instruction and outputs the result using the output register.

This process happens in two cycles, i.e. Fetch & Execute across six different timing states accounted by a 6-bit ring-counter (first three states for Fetch Cycle and next three for the Execute Cycle).

![T States]()

## Control signals

The controller-sequencer outputs `12` different control signals which are key to the computer's automatic operation. 
Every signal supervises and tells the computer about what needs to be done at what stage. 
All the signals are listed below:

+ `inc` = INCREMENT
+ `pc_out_en` = OUTPUT ENABLE OF PROGRAM COUNTER
+ `low_ld_mar` = LOAD MAR
+ `low_mem_out_en` = CHIP ENABLE FOR RAM
+ `low_ld_ir` = LOAD INSTRUCTION REGISTER
+ `low_ir_out_en` = OUTPUT ENABLE OF INSTRUCTION REGISTER
+ `low_ld_acc` = LOAD ACCUMULATOR
+ `acc_out_en` = OUTPUT ENABLE OF ACCUMULATOR
+ `sub_add` = SUBTRACTION/ADDITION
+ `subadd_out_en` = OUTPUT ENABLE OF SUBTRACTION/ADDITION
+ `low_ld_b_reg` = LOAD B REGISTER
+ `low_ld_out_req` = LOAD OUTPUT REGISTER
+ `low_halt` = HALT EXECUTION

## Directory structure

    Below is the structure of how the verilog modules are arranged in this repository.
    .
    ├── README.md
    ├── hdl
    │   └── dff_posedge.v
    ├── simulation
    └── test
        └── tb_dff_posedge.v

-   All Verilog modules are located in the `hdl` directory
    -   Only **ONE** Verilog module exists per `.v` file
-   All Verilog test-benches are located in the `test` directory
    -   Filenames should are prefixed with `tb`
        -   E.g. `dff_posedge.v - tb_dff_posedge.v`
    -   Output files (`.out`) after compilation also are located in the `test` directory.out` extension
-   All Verilog simulation output (`vcd` dumps for waveforms etc.) are located in the `simulation` directory.

## Compilation

There are two helper scripts to simplify this step.

To compile, use the `compile.sh` script. Usage is as follows:

``` {.sh}
# To compile all files in the test directory
$ ./compile.sh

# To compile select files
$ ./compile.sh FILE1 FILE2 ...
```

To run compiled files, use the `run.sh` script. 
Usage is as follows:

``` {.sh}
# To run all compiled files in the test/ directory
$ ./run.sh

# To run select files
$ ./run.sh FILE1 FILE2 ...
```

To open waveform dump (gtkwave is used here): `gtkwave <path-to-vcd-file>`