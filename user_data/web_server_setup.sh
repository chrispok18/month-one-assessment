#!/bin/bash
# Update and install Apache
yum update -y
yum install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create a simple HTML page with instance ID
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
echo "<html><h1>Welcome to Web Server - $INSTANCE_ID</h1></html>" > /var/www/html/index.html
