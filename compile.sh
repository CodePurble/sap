#!/usr/bin/env bash
HDL_DIR="../hdl"

compile()
{
	base="${1%.*}"
	echo -e "\033[1;33mCompiling $1\033[0m"
	iverilog -Wall -y"$HDL_DIR" -o "$base.out" "$1"
}

if [[ $# == 0 ]]; then
	TEST_DIR="./test"

	cd $TEST_DIR || exit 1

	echo -e "\033[1mCompiling all\n $1\033[0m"

	for file in *.v; do
		compile $file
	done
else
	HDL_DIR="./hdl"
	for arg; do
		compile $arg
	done
fi


