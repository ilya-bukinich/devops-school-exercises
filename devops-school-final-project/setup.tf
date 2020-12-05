# TF setup

variable "vpc_id" {
 default = "vpc-f34ce899"
}

variable "subnet_id" {
 default = "subnet-25ec634f"
}

variable "ami_id" {
 default = "ami-04932daa2567651e7"
}

variable "security_group" {
 default = "sg-0c8aa902f960dfe41"
}

variable "instance_type" {
 default = "t2.micro"
}

variable "key_name" {
  default = "aws_key"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "build" {
  instance_type   = "${var.instance_type}"
  ami             = "${var.ami_id}"
  subnet_id       = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.security_group}"]
  key_name        = "${var.key_name}"
  tags = {
    Name = "build"
  }
  user_data = file("setup.sh")
}

output "build_ip" {
  value = aws_instance.build.public_ip
}

resource "aws_instance" "prod" {
  instance_type   = "${var.instance_type}"
  ami             = "${var.ami_id}"
  subnet_id       = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.security_group}"]
  key_name        = "${var.key_name}"
  tags = {
    Name = "prod"
  }
  user_data = file("setup.sh")
}

output "prod_ip" {
  value = aws_instance.prod.public_ip
}
