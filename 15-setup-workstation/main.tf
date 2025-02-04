resource "aws_instance" "workstation" {
  ami                    = local.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [local.sg]

  key_name = "linux-key devops shiva"

  tags = {
    Name      = "workstation"
    Terraform = "True"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("../../../linux-key")
  }

  provisioner "remote-exec" {
    script = "setup.sh"
  }

  provisioner "file" {
    source = "~/.aws/credentials"
    destination = "/home/ec2-user/.aws/credentials"
  }
}
