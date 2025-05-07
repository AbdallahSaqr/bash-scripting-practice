#!/bin/bash
echo "1. Full names:"
awk -F: '{print $5}' /etc/passwd

echo "2. Login, full name, home directory:"
awk -F: '{print NR ": " $1, $5, $6}' /etc/passwd

echo "3. UID > 500:"
awk -F: '$3 > 500 {print $1, $3, $5}' /etc/passwd

echo "4. UID == 500:"
awk -F: '$3 == 500 {found=1; print $1, $3, $5} END {if (!found) print "none"}' /etc/passwd

echo "5. Lines 5 to 15:"
awk 'NR>=5 && NR<=15' /etc/passwd

echo "6. Change lp to mylp:"
awk '{gsub(/lp/, "mylp"); print}' /etc/passwd

echo "7. User with highest UID:"
awk -F: '($3 > max) {max = $3; user = $0} END {print user}' /etc/passwd

echo "8. Sum of UIDs:"
awk -F: '{sum += $3} END {print sum}' /etc/passwd
