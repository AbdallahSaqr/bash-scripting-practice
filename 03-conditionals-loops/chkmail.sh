#!/bin/bash
while true; do
    if [ -f /var/mail/$USER ] && [ -s /var/mail/$USER ]; then
        echo "You have new mail."
    else
        echo "No new mail."
    fi
    sleep 10
done
