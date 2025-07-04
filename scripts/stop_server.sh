#!/bin/bash
echo "Running stop_server.sh"

isExistApp=$(pgrep httpd)
if [[ -n "$isExistApp" ]]; then
    echo "httpd process found. Stopping..."
    sudo systemctl stop httpd
else
    echo "httpd not running. Nothing to stop."
fi
