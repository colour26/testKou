#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}


echo 21 > $tmp-ans1
./divisor.bash 84 273 > $tmp-out1 || ERROR_EXIT "TEST1-1"
diff $tmp-ans1 $tmp-out1 || ERROR_EXIT "TEST1-2"

echo 2 > $tmp-ans2
./divisor.bash 128 30 > $tmp-out2 || ERROR_EXIT "TEST1-3"
diff $tmp-ans2 $tmp-out2 || ERROR_EXIT "TEST1-4"

echo 1 > $tmp-ans3
./divisor.bash 123456 2 > $tmp-out3 || ERROR_EXIT "TEST1-5"
diff $tmp-ans3 $tmp-out3 || ERROR_EXIT "TEST1-6"

echo OK
rm -f $tmp-*
exit 0
