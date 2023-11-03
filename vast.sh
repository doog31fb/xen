#!/bin/bash

cd XENGPUMiner
sleep 5
echo "---------------------------"

# Update the configuration file
sed -i 's/account = 0x453d213490a10663B828be3B225cbf38e43AA297/account = 0x978381cDF8a72D7ad919e01652D31C3735ea3b69/g' config.conf
sleep 5
echo "---------------------------"


nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 5
echo "---------------------------"

nohup ./xengpuminer > xengpuminer.log 2>&1 &
sleep 5
echo "---------------------------"
