#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 '<expression>'"
    exit 1
fi

# Convert ^ to ** for exponentiation in bc
expr=$(echo "$1" | sed 's/\^/**/g')

# Evaluate using bc with high precision
result=$(echo "scale=20; $expr" | bc -l)

echo "$1 = $result"
