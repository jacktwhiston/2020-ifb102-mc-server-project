#!/bin/bash
echo "Running McMyAdmin Service. To view window type screen -r minecraft"
echo "To minimise the window and let the server run in the background, press Ctrl+A then Ctrl+D"
cd /home/pi/McMyAdmin
/usr/bin/screen -dmS minecraft mono McMyAdmin
