resource "aws_security_group" "teset_sg" {
  name = "allow_ssh"
  vpc_id = aws_vpc.test_vpc.id
  ingress = {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }
  egress = {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_block = ["0.0.0.0/0"]
  }
}