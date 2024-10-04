resource "aws_instance" "main" {
  count = length(var.instances)

  ami = local.ami_id_from_user
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    Name = var.instances[count.index]
  }
}