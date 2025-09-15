#!/bin/bash

# Simple permission fix script for domain.com
# Changes all files ownership to username:username

echo "Fixing file ownership for Rate-API project..."

# Check if running as root
if [[ $EUID -ne 0 ]]; then
   echo "ERROR: This script must be run as root (use sudo)" 
   exit 1
fi

# Fix ownership of all files to username:username
chown -R username:username /home/username/

echo "✓ All files now owned by username:username"
echo "✓ Permission fix completed!