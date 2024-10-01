resource "aws_instance" "expense" {
  for_each               = var.servers
  ami                    = data.aws_ami.devops-practice_ami.id
  instance_type          = each.value[0]
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = merge(
    var.common_tags, { Name = each.key }
  )
}