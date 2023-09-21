provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAU24XLTLF3Z5TNO7DAWS"
  secret_key = "orChw0CRQSUPSusFeF71r76x+UjgWqHGRMdPHSv7"
}

#resource "aws_s3_bucket" "pimpl_bucket" {
#bucket = "pimpl-bucket"


#resource "aws_security_group" "pimpl_security_group" {
#name = "pimpl_security_group"
#ingress {
#protocol = "tcp"
#from_port = 80
#to_port = 80
#cidr_blocks = ["0.0.0.0/0"]


#resource "aws_vpc" "my_vpc" {
#cidr_block = "10.0.0.0/16"

resource "aws_instance" "solarwinds" {
  ami           = "ami-063d0d3250553f017"
  instance_type = "t2.micro"
  count = "2"
  key_name      = "wordpress"
  vpc_security_group_ids               = [
        "sg-0d0d3c252608b37fc", ]
  }

resource "aws_security_group" "lol" {
  name        = "lol"
  description = "Allow access on port 22"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
}
