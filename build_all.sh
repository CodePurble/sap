#!/usr/bin/env bash

HDL_DIR="hdl"
TEST_DIR="test"

for file in $TEST_DIR/*.v; do
	base="${file%.*}"
	echo -e "\033[1;33mCompiling $file\033[0m"
	iverilog -Wall -y"$HDL_DIR" -o "$base.out" "$file"
done
