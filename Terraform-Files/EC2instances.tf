resource "aws_instance" "hussein-ec2-public" {
  ami           = var.ami-id
  subnet_id = aws_subnet.my-subnet-hussein[0].id
  instance_type = var.instances-type
  associate_public_ip_address = "true"
  user_data = <<EOF
    #!/bin/bash
    # install httpd (Linux Version2)
    yum update -y
    yum -y install httpd
    systemctl start httpd
    systemctl enable httpd
    EOF
  vpc_security_group_ids = [aws_security_group.sg-hussein-public.id]
  tags = {
    Name = "public-instance"
  }
}

############################################################################################

resource "aws_instance" "hussein-ec2-private" {
  ami           = var.ami-id
  subnet_id = aws_subnet.my-subnet-hussein[1].id
  instance_type = var.instances-type
  user_data = <<EOF
    #!/bin/bash
    # install httpd (Linux Version2)
    yum update -y
    yum -y install httpd
    systemctl start httpd
    systemctl enable httpd
    EOF
  vpc_security_group_ids = [aws_security_group.sg-hussein-private.id]
  tags = {
    Name = "private-instance"
  }
}
