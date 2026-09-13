#!/bin/bash

output=$(./application)

if [ "$output" = "HelLlo from Jenkins CI!" ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    exit 1
fi
