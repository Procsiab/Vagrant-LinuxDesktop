#!/bin/bash

start_seconds="$(date +%s)"

ping_result="$(ping -c 2 1.1.1.1 2>&1)"
if [[ $ping_result != *bytes?from* ]]; then
        ping_result="$(ping -c 2 4.2.2.2 2>&1)"
fi

apt-get update && apt-get -y upgrade && apt-get -y autoremove

apt-get install -y ubuntu-desktop

end_seconds="$(date +%s)"
echo "-----------------------------"
echo "Provisioning complete in "$(expr $end_seconds - $start_seconds)" seconds"
if [[ $ping_result == *bytes?from* ]]; then
        echo "External network connection established, packages up to date."
else
        echo "No external network available. Package installation and maintenance skipped."
fi
