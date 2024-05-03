
data "aws_ami" "linux_ami" {
  filter {
    name = "name"
    values = [ "Amazon Linux 2023" ]
  }
  
}
resource "aws_instance" "test_instance" {

    ami = var.ami 
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group]
    tags = {
      name = "test_instance"
    }
}