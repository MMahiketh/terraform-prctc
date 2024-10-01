resource "aws_instance" "my_ec2_instance" {
  ami                    = data.aws_ami.devops_practice_ami.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_allow_ssh.id]
  tags = {
    Name = "terraform ec2"
  }
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo systemctl stop nginx",
      "sudo dnf remove nginx -y"
    ]
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > public_ip.txt"
  }
}
