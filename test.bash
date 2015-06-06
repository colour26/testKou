#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}


echo 21 > $tmp-ans1
./divisor.bash 84 273 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans1 $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
