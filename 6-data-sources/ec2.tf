resource "aws_security_group" "sg_allow_ssh" {
  name        = "allow_ssh"
  description = "Allow port 22 for ssh access"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "terraform allow_ssh"
  }
}

resource "aws_instance" "my_ec2_instance" {
  ami                    = data.aws_ami.devops_practice_ami.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_allow_ssh.id]
  tags = {
    Name = "terraform ec2"
  }
}
