#!/bin/bash
systemctl start mariadb
systemctl enable mariadb
mysql_secure_installation

mysql -u root -p
CREATE DATABASE wordpress;
CREATE USER wordpressuser@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
