resource "aws_security_group" "sg-hussein-public" {
  name        = "SG-public-access"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.admin-vpc.id    
  

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "SG-Hussein-Public"
  }
}
########################################################################################
resource "aws_security_group" "sg-hussein-private" {
  name        = "SG-private-access"
  description = "Private security group"
  vpc_id      = aws_vpc.admin-vpc.id    
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "SG-Hussein-Private"
  }
}