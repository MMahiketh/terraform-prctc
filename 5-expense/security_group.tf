resource "aws_security_group" "sg_allow_ssh" {
  name        = "allow_ssh"
  description = "Managed by Terraform. Allows ssh access to instances"
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
  tags = merge(
    var.common_tags, {
      Name = "allow_ssh_all_ips"
    }
  )
}
