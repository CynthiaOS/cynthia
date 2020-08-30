#!/bin/bash

# script to run build on qemu

printf "\n==================================\n"
printf "\tBooting CynthiaOS"
printf "\n==================================\n\n"
cargo bootimage
qemu-system-x86_64 -drive format=raw,file=target/x86_64-cynthia/debug/bootimage-cynthia.bin
