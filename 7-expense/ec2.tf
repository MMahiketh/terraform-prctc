resource "aws_instance" "expense" {
  count                  = length(var.servers)
  ami                    = data.aws_ami.devops-practice_ami.id
  instance_type          = var.servers[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = merge(
    var.common_tags, { Name = var.servers[count.index] }
  )
}