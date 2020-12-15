# sap
SAP Computers in Verilog

## Plan

* Day 1

| Time      | Topic                                                          |
|-----------|----------------------------------------------------------------|
| (RP) 5:30 | Intro - Lay out objectives of workshop                         |
| (SP) 5:35 | Binary, Hex system, 2's complement arithmetic                  |
| (SP) 5:45 | Combinational logic recap (Adders, MUX/DEMUX), Tri-state logic |
| (SP) 6:05 | D-ff                                                           |
| (SP) 6:15 | 4 bit PIPO reg using D-ff                                      |
| (PR) 6:45 | Bus architecture                                               |

* Day 2

| Time      | Topic                                                                                                                                                                                   |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| (PR) 5:30 | Recap of day 1                                                                                                                                                                          |
| (PR) 5:35 | SAP-1 Architecture Block diagram                                                                                                                                                        |
| (PR) 5:45 | Adder-Subtractor                                                                                                                                                                        |
| (SP) 6:00 | Tri-state registers (MAR, IR, Acc, B, Out)                                                                                                                                              |
| (RP) 6:15 | PC                                                                                                                                                                                      |
| (RP) 6:25 | Memory (ROM)                                                                                                                                                                            |
| (RP) 6:35 | Control unit and instruction set (instruction structure, how to write a program, decode) (Demo program, manually set control bits) (Assignment- write a simple program, hype for day 3) |

* Day 3

| Time      | Topic                                                   |
|-----------|---------------------------------------------------------|
| (RP) 5:30 | Recap of day 2                                          |
| (RP) 5:35 | Fetch-Execute cycles and T-states                       |
| (PR) 6:35 | Making the control unit and show a demo program running |

# Workflow
* Please use `iverilog` to compile and test your code. To view waveforms, use a
  program like `gtkwave`.

* Please give meaningful commit messages :P

* To sync your local repo with this one, run `git pull origin master` in the
  root of your repo


## Directory structure
```
.
├── README.md
├── hdl
│   └── dff_posedge.v
├── simulation
└── test
    └── tb_dff_posedge.v
```

* All Verilog modules go in the `hdl` directory
	* Only **ONE** Verilog module per `.v` file
* All Verilog test-benches go in the `test` directory
	* Filenames should be prefixed with `tb`
		* E.g. `dff_posedge.v - tb_dff_posedge.v`
	* Output files after compilation also go here, give them the `.out` extension
* All Verilog simulation output (`vcd` dumps for waveforms etc.) go in the
  `simulation` directory

Do take a look at the `dff_posedge` example module.

## Compilation
Compile: `iverilog -y<path-to-hdl-dir> -Wall -o <path-to-output-file> <path-to-input-file>`

Run compiled file: `vvp <path-to-file>`

Open waveform dump (gtkwave is used here): `gtkwave <path-to-vcd-file>`

To compile **ALL** files in the `test` directory, run the provided `build_all.sh` script

To run **ALL** files in the `test` directory, run the provided `run_all.sh` script

# Notes

## Control signals

* PC
	* C_P - Count enable
	* E_P - Output enable
	* CLR - Async reset

* MAR
	* L_M' - Load

* RAM
	* CE' - Chip enable

* IR
	* L_I' - Load
	* E_I' - Output enable
	* CLR - Async clear

* ACCUMULATOR
	* E_A - Output enable
	* L_A - Load

* ADDER/SUBTRACTOR
	* S_U - Subtract
	* E_U - Output enable

* B REG
	* L_B' - Load B

* OUTPUT REG
	* L_O' - Load output
