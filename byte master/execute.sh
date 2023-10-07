#!/bin/bash
# A random count of files will be generated within the src directory once the tests are run.

# Write your code here

total_size=0

for file in "src"/*; do
  if [ -f "$file" ]; then

    file_size=$(stat -c %s "$file")
    total_size=$((total_size + file_size))
  fi
done


echo "$total_size"
