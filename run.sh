#!/usr/bin/env bash

run()
{
	echo -e "\033[1;33mRunning $1\033[0m"
	vvp $1
}

if [[ $# == 0 ]]; then
	TEST_DIR="./test"

	cd $TEST_DIR || exit 1

	echo -e "\033[1mBuilding all\n $1\033[0m"

	for file in *.out; do
		run $file
	done
else
	for arg; do
		run $arg
	done
fi
