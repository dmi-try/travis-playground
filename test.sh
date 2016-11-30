#!/bin/sh

OUT=`/run.sh` # Should work only from docker
RES=$?
ERRORS=0

if [ $RES -ne 0 ]; then
  echo "Wrong exit code: $RES != 0"
  ERRORS=$(($ERRORS + 1))
fi

EXPECTED="Hello, World!\n"
if [ "${OUT}" = "${EXPECTED}" ]; then
  echo "Wrong output: $OUT != $EXPECTED"
  ERRORS=$(($ERRORS + 1))
fi

if [ $ERRORS -ne 0 ]; then
  echo "Tests failed"
else
  echo "Tests passed"
fi
exit $ERRORS
