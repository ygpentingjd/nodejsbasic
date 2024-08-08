#!/bin/bash
# Install Node.js and npm
curl -sL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo yum install -y nodejs

# Install pm2 globally
sudo npm install -g pm2

# Create DIR
APP_DIR="/home/ec2-user/nodejsbasic"
if [ ! -d "$APP_DIR" ]; then
  mkdir -p "$APP_DIR"
fi

# Navigate to the app directory
cd "$APP_DIR"

# Install dependencies
npm install