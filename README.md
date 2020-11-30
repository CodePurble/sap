# sap
SAP Computers in Verilog

* Day 1: Digital Design, Intro to SAP architecture
* Day 2: Build SAP-1

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
		* E.g. `dff_posedge.v -> tb_dff_posedge.v`
	* Output files after compilation also go here, give them the `.out` extension
* All Verilog simulation output (`vcd` dumps for waveforms etc.) go in the
  `simulation` directory

Do take a look at the `dff_posedge` example module.

## Compilation
Compile: `iverilog -y<path-to-hdl-dir> -Wall -o <path-to-output-file> <path-to-input-file>`

Run compiled file: `vvp <path-to-file>`

Open waveform dump (gtkwave is used here): `gtkwave <path-to-vcd-file>`

To compile **ALL** files in the `test` directory, run the provided `build.sh` script
To run **ALL** files in the `test` directory, run the provided `run.sh` script
