#!/usr/bin/env bash

HDL_DIR="hdl"
TEST_DIR="test"

for file in $TEST_DIR/*.out; do
	echo -e "\033[1;33mRunning $file\033[0m"
	vvp $file
done

