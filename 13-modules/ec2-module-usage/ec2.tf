module "an_instance" {
  source = "../ec2-module-development"

  ami_id = data.aws_ami.devops_practice_ami.id
  instance_type = var.instance_type
  instances = var.instance_names
}