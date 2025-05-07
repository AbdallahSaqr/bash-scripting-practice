#!/bin/bash
read -p "How many elements? " n
for ((i=0; i<n; i++)); do
    read -p "Element $i: " arr[i]
done
echo "Array: ${arr[@]}"
