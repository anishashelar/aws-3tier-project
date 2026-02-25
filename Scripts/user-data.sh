#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<html><head><title>autoscaling</title></head><body bgcolor= pink><h1>Welcome from Auto Scaling Server</h1></body></html>" > /var/www/html/index.html



# to check the database connection on server some commands are used

sudo hostnamectl set-hostname server1
sudo su
yum install mariadb105 -y

