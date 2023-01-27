resource "aws_vpc" "admin-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = var.vpc-name
  }
}
