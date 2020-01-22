resource "aws_vpc" "vpc" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "TerraformVPC"
    Location = "Hyderabad"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "190.160.0.0/16"

  tags = {
    Name = "Subnet1"
  }
}