#!/bin/bash
echo "1. Lines with 'lp':"
sed -n '/lp/p' /etc/passwd

echo "2. Except 3rd line:"
sed '3d' /etc/passwd

echo "3. Except last line:"
sed '$d' /etc/passwd

echo "4. Except lines with 'lp':"
sed '/lp/d' /etc/passwd

echo "5. Substitute words with 'lp':"
sed -E 's/\w*lp\w*/mylp/g' /etc/passwd
