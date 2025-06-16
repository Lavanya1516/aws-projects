# This script installs and starts Apache on the private EC2 instance.
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Welcome to Lavanya's Private EC2" > /var/www/html/index.html
