#!/bin/bash
# This script runs inside Ubuntu to setup Nginx

echo "Updating packages..."
sudo apt-get update -y

echo "Installing Nginx..."
sudo apt-get install nginx -y

# This line creates your custom HTML page
# echo "<h1>Hello from MyNewDevopsProject</h1><p>Provisioned automatically!</p>" | sudo tee /var/www/html/index.html

echo "Starting Nginx..."
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Server is ready!"