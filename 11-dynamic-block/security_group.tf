resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Managed by Terraform. Allows a few ports"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value["port"]
      to_port     = ingress.value["port"]
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description = ingress.value.description
    }
  }
  tags = {
    Name = "allow_ports_all_ips"
  }
}
