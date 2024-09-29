variable "ami_devops" {
  type        = string
  description = "This is the ami id of devops-practice"
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
#  default = "t3.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "BACKEND"
    Project     = "expense"
    Component   = "backend"
    Environment = "DEV"
    Terraform   = "True"
  }
}

variable "ssh_port" {
  type    = number
  default = 22
}
