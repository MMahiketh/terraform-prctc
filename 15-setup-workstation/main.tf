resource "aws_instance" "workstation" {
  ami             = local.ami_id
  instance_type   = var.instance_type
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
  provisioner "file" {
    source      = "../../../docker-install.sh"
    destination = "/tmp/setup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/setup.sh",
      "sudo sh /tmp/setup.sh"
    ]
  }
}
