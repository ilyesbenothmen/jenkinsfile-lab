#!/bin/bash

output=$(./application)

if [ "$output" = "Hello from Jenkins CI!" ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    exit 1
fi
