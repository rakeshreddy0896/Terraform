provider "aws" {
  region = var.aws_region

}

module "ec_instance" {
    source = "./module/ec2"
     ami = var.ami 
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group]
}

module "vpc" {
  source = "./module/vpc"
}

