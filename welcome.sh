#!/bin/bash

# Welcome message
echo "This script has been written by [Your Name] and is for system health monitoring purposes."
echo

# 1. Number of vCPUs
vcpu_count=$(grep -c processor /proc/cpuinfo)
echo "Number of vCPUs: $vcpu_count"
echo

# 2. RAM size and used RAM
ram_total=$(free -h | awk '/^Mem:/ {print $2}')
ram_used=$(free -h | awk '/^Mem:/ {print $3}')
echo "RAM Total: $ram_total"
echo "RAM Used:  $ram_used"
echo

# 3. Total disk size and used disk size
disk_total=$(df -h --total | awk '/^total/ {print $2}')
disk_used=$(df -h --total | awk '/^total/ {print $3}')
echo "Total Disk Size: $disk_total"
echo "Used Disk Size:  $disk_used"
echo

# 4. Private and public IP addresses
private_ip=$(hostname -I)
public_ip=$(curl -s ifconfig.me)
echo "Private IP: $private_ip"
echo "Public IP:  $public_ip"
echo

# 5. Status of services installed on the server (example: nginx and sshd)
services=("nginx" "sshd")  # Add more services as needed
echo "Service statuses:"
for service in "${services[@]}"
do
	    status=$(systemctl is-active $service)
	        echo "$service: $status"
	done

