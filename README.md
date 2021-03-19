# AMI - demopr
Repository for AMI

## Instructions for using packer.
* Clone this repo to your local, `packer` is assumed installed. 
* Configure variables inside `ami.json` for 
  *  "aws_access_key" // access key of user
  *  "aws_secret_key" // secret key of user
  *  "aws_region" // aws region of choice
  *  "subnet_id" // subnet id for which you want to build AMI on
  *  "source_ami" // most updated source ami

In terminal, run `packer build ami.json`, waiting for packer to create an AMI.


> Once the AMI is ready, students will launch an EC2 instance using AWS console in the VPC they have setup using Terraform. 

## Demo Process
After access to instance,
`npm install` to install all dependencies,
run `sudo apt install mysql-server` to install databse server,
run `sudo cat /etc/mysql/debian.cnf` to know about the password.

Edit `config/db.config.js`, 
Change `USER` and `PASSWORD` to `debian-sys-maint` and its password.

Run `mysql -u debian-sys-maint -p` and use password, enter mysql console,
`mysql> CREATE DATABASE testdb;` to create database for demo.

then run `node app.js` to start web application.

During demo, in the Postman, change `localhost` to public IPv4 of Instance.
