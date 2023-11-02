#!/bin/bash

cd XENGPUMiner
sleep 5
echo "---------------------------"

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x978381cDF8a72D7ad919e01652D31C3735ea3b69/g' config.conf
sleep 5
echo "---------------------------"


sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer > xengpuminer.log 2>&1 &
sleep 5
echo "---------------------------"
