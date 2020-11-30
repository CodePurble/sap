#!/usr/bin/env bash

HDL_DIR="../hdl"
TEST_DIR="test"

cd $TEST_DIR || exit 1

for file in *.v; do
	base="${file%.*}"
	echo -e "\033[1;33mCompiling $file\033[0m"
	iverilog -Wall -y"$HDL_DIR" -o "$base.out" "$file"
done
