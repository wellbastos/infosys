#!/bin/bash

yum update -y 
yum install -y httpd

echo 'Teste INFOSYS DEVOPS' > /var/www/html/index.html

service httpd start
