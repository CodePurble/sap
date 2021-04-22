#!/usr/bin/env bash
HDL_DIR="./hdl"
TEST_DIR="./test"

compile()
{
    base="${1%.*}"
    echo -e "\033[1;33mCompiling $1\033[0m"
    iverilog -Wall -y"$HDL_DIR" -o "$base.out" "$1"
}

if [[ $# == 0 ]]; then
    echo -e "\033[1mCompiling all\n $1\033[0m"

    for file in "$TEST_DIR"/*.v; do
        compile "$file"
    done
else
    for arg; do
        compile "$arg"
    done
fi


