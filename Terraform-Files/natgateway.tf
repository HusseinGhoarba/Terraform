resource "aws_nat_gateway" "hussein-nat" {
  allocation_id = aws_eip.elastic-ip-hussein.id
  subnet_id     = aws_subnet.my-subnet-hussein[0].id

  tags = {
    Name = var.nat-gateway-name
  }
  depends_on = [aws_internet_gateway.hussein-gw]
}
