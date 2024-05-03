variable "ami" {
  type = string
  description = "ami for ec2"
  default = ""
}

variable "instance_type" {
  type = string
  description = "instance_type for ec2"
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  description = "subnet_id for ec2"
}

variable "security_group" {
  type = string
  description = "security_groups for ec2"
}

variable "aws_region" {
  type = string
  description = "aws_region"
}