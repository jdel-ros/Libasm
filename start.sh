#!/bin/sh

make
gcc -Wall -Wextra -Werror srcs/main.c libasm.a
./a.out