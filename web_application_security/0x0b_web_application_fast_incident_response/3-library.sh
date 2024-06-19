#!/bin/bash
awk -F\" '{print $6}' logs.txt | sort | uniq -c | sort -nr | head -n 1 | awk '{$1=""; print $0}' | sed -e 's/^[[:space:]]*//'