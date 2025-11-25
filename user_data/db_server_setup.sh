#!/bin/bash
# Update and install Postgres
yum update -y
amazon-linux-extras enable postgresql13
yum install -y postgresql postgresql-server

# Initialize and start Postgres
postgresql-setup initdb
systemctl enable postgresql
systemctl start postgresql

# Set password for default user (replace 'YourPasswordHere' locally)
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'YourPasswordHere';"
