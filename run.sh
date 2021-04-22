#!/usr/bin/env bash
TEST_DIR="./test"

run()
{
    echo -e "\033[1;33mRunning $1\033[0m"
    vvp "$1"
}

[[ -d simulation ]] || mkdir simulation

if [[ $# == 0 ]]; then

    echo -e "\033[1mRunning all testbenches\n $1\033[0m"

    for file in "$TEST_DIR"/*.out; do
        run $file
    done
else
    for arg; do
        cd "$(dirname arg)" || exit
        run $arg
    done
fi
