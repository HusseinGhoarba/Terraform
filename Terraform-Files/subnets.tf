resource "aws_subnet" "my-subnet-hussein" {
  count = length(var.subnet-cidr)
  vpc_id = aws_vpc.admin-vpc.id
  cidr_block = var.subnet-cidr[count.index]
  
  tags = {
    Name = var.subnet-name[0]
  }
}
##################################################################
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.my-subnet-hussein[0].id
  route_table_id = aws_route_table.public-husseingh.id
}
###################################################################
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.my-subnet-hussein[1].id
  route_table_id = aws_route_table.private-husseingh.id
}

# resource "aws_subnet" "private-subnet-hussein" {
#   vpc_id = aws_vpc.admin-vpc.id
#   cidr_block = "10.0.1.0/24"
#   tags = {
#     Name = var.subnet-name[1]
#   }
# }
  

# resource "aws_subnet" "var.subnet-names[count.index]" {
#   count = length(var.subnet-cidr)
#   vpc_id = aws_vpc.admin-vpc.id
#   cidr_block = var.subnet-cidr[count.index]

#   tags = {
#     Name = var.subnet-name[0]
#   }
# }
