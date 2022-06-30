##!/bin/bash
cd /datadrive/flaskdrinks
git pull && echo "pull completed"
sleep 2s
source /datadrive/flaskdrinks/tts/bin/activate
echo "Killing service . . ."
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
pm2 stop app.py
sleep 5s
echo "restarting service . . ."
pm2 start app.py
echo "Deployment done...Thanks!"
