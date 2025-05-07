#!/bin/bash
for item in ~/*; do
    chmod +x "$item"
done
echo "Execute permission granted to all files and directories in home."
