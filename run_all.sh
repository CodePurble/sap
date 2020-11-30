#!/usr/bin/env bash

HDL_DIR="../hdl"
TEST_DIR="test"

cd $TEST_DIR || exit 1

for file in *.out; do
	echo -e "\033[1;33mRunning $file\033[0m"
	vvp $file
done

