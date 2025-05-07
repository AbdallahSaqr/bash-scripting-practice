#!/bin/bash
for user in $(cut -d: -f1 /etc/passwd); do
    mail -s "System Message" "$user" < mtemplate
done
