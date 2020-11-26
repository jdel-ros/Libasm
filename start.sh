#!/bin/sh

make
gcc -Wall -Wextra -Werror main.c libasm.a
./a.out