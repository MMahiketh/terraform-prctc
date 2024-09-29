resource "aws_instance" "expense" {
  count                  = length(var.servers)
  ami                    = var.devops_ami
  instance_type          = var.common_instance_type
  vpc_security_group_ids = [aws_security_group.sg_allow_ssh.id]
  tags = merge(
    var.common_tags, { Name = var.servers[count.index] }
  )
}
