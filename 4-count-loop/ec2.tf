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
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(
    var.common_tags, {
      Name = "Terraform allow_ssh"
    }
  )
}

resource "aws_instance" "my_ec2_instance" {
  count                  = length(var.instance_names)
  ami                    = var.ami_devops
  instance_type          = var.environment == "PROD" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_allow_ssh.id]
  tags = merge(
    var.common_tags, {
      Name = var.instance_names[count.index]
    }
  )
}
