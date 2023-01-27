resource "aws_route_table" "public-husseingh" {
  vpc_id = aws_vpc.admin-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hussein-gw.id
  } 
  
  tags = {
    Name = var.route-table-name[0]
  }
}
#################################################################################3
resource "aws_route_table" "private-husseingh" {
  vpc_id = aws_vpc.admin-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.hussein-nat.id
  }
  
  tags = {
    Name = var.route-table-name[1]
  }
}
