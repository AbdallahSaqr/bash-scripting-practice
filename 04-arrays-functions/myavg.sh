#!/bin/bash
read -p "How many numbers? " n
sum=0
for ((i=0; i<n; i++)); do
    read -p "Number $((i+1)): " num
    arr[i]=$num
    ((sum += num))
done
avg=$((sum / n))
echo "Average: $avg"
