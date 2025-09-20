#!/bin/bash

VM1_PUBLIC_IP="$1"
VM2_PRIVATE_IP="$2"
SSH_KEY="$3"

ssh -o StrictHostKeyChecking=no -i $SSH_KEY azureuser@$VM1_PUBLIC_IP "ping -c 4 $VM2_PRIVATE_IP"