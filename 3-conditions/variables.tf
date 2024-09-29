variable "ami_devops" {
  type        = string
  description = "This is the ami id of devops-practice"
  default     = "ami-09c813fb71547fc4f"
}

variable "environment" {
  type = string
  default = "DEV"
}

variable "ssh_port" {
  type    = number
  default = 22
}
