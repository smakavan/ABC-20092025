#!/bin/bash

VM1_PUBLIC_IP="4.242.235.115"
VM2_PRIVATE_IP="10.15.1.4"
SSH_KEY_PATH="/home/sachin/.ssh/mykeysac"
SSH_USER="azureuser"

echo "Connecting to VM1"
ping -c 4 "$VM1_PUBLIC_IP"

echo "Connecting to VM1 via SSH to ping VM2"
ssh -o StrictHostKeyChecking=no -i "$SSH_KEY_PATH" "$SSH_USER@$VM1_PUBLIC_IP" "ping -c 4 $VM2_PRIVATE_IP"
