data "aws_ami" "devops_practice_ami" {
  owners = ["973714476881"]
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  most_recent = true
}
