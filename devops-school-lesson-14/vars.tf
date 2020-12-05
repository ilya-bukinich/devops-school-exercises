variable "region" {
 default = "eu-central-1"
}

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

variable "key_name" {
  default = "aws_key"
}

variable "instance_type" {
 default = "t2.micro"
}

variable "public_key_path" {
 default = "/home/ubuntu/.ssh/aws_key.pub"
}

variable "private_key_path" {
 default = "/home/ubuntu/.ssh/aws_key"
}
