# AMI

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
