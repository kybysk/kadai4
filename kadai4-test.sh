#!/bin/bash

ERROR_EXIT () {
	echo "$1" >&2
	rm -f /tmp/$$-*
	exit 1
}

./kadai4.sh "10" > /tmp/$$-result
echo "INPUT 2 ARGUMENTS" > /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err"

./kadai4.sh "10" "10" > /tmp/$$-result
echo "The greatest common divisor of 10 and 10 is 10" > /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err"

./kadai4.sh "test" "10" > /tmp/$$-result
echo "INPUT NATURAL NUMBER" > /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err"

./kadai4.sh "-10" "10" > /tmp/$$-result
echo "INPUT NATURAL NUMBER" > /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err"

./kadai4.sh "0.5" "10" > /tmp/$$-result
echo "INPUT NATURAL NUMBER" > /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err"


echo "test OK"
