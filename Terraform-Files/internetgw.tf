resource "aws_internet_gateway" "hussein-gw" {
  vpc_id = aws_vpc.admin-vpc.id
  tags = {
    Name = var.gateway-name
  }
}
