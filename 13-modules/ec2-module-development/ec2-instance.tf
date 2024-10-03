resource "aws_instance" "main" {
  ami = data.aws_ami.devops_practice_ami.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-008c65bfe7870ea36"]
}