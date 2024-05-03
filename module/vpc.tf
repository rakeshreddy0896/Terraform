resource "aws_vpc" "test_vpc" {
 cidr_block = "10.0.0.0/16" 
 tags = {
    name = "test_vpc"
 }
}

provider "aws" {
 region = "us-east-1" 
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = "10.0.1.0/24"
   tags = {
    name = "public_subnet"
 }

}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = "10.0.2.0/24"
   tags = {
    name = "private_subnet"
 }

}


