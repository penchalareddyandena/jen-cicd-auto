resource "aws_instance" "demo1" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  subnet_id = "subnet-03484fc1592bb5b82"
  key_name = aws_key_pair.tfdemo.id
  vpc_security_group_ids = [aws_security_group.demo1-sg.id]

  tags = {
    Name = "Demo1"
  }
}

resource "aws_security_group" "demo1-sg" {
  name        = "Demo1-sg"
  description = "Demo1-sg inbound traffic"
  vpc_id            = "vpc-066837d8cfd9c8341"

  ingress {
    description      = "Demo from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "Demo1-sg"
  }
}