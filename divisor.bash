#!/bin/bash

a=$1
b=$2

while [ "$(expr $a % $b)" != "0" ] ; do
 c=$(expr $a % $b)
 a=$b
 b=$c
done

echo $b
