resource "aws_security_group" "bastion" {
  name        = "bastion_sg"
  description = "Allow admin"
  vpc_id      = "vpc-066837d8cfd9c8341"

  ingress {
    description      = "TLS from Admin"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["49.204.200.87/32"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Bastion SG"
  }
}