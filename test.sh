#!/usr/bin/env bash

set -o errexit

main() {
    exec=$(ls ranges* | head -1)

    x=1
    while [ -f "fixtures.$x.ranges.txt" ] && [ -f "fixtures.$x.numbers.txt" ] && [ -f "fixtures.$x.output.txt" ]
    do
        ./$exec fixtures.$x.ranges.txt < fixtures.$x.numbers.txt | cmp fixtures.$x.output.txt - \
          || exit 1;
        x=$(( $x + 1 ))
    done
}

main
echo $?
