#!/bin/bash

# Get CPU utilization percentage
cpu_util=$(ps -A -o %cpu | awk '{s+=$1} END {print s}')

