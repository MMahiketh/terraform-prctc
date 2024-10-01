variable "servers" {
  type = map(list(string))
  default = {
    mysql    = ["t3.small", "mysql.", "private_ip"]
    backend  = ["t3.micro", "backend.", "private_ip"]
    frontend = ["t3.micro", "", "public_ip"]
  }
}

variable "common_tags" {
  type = map(string)
  default = {
    Terraform   = "true"
    Environment = "DEV"
    project     = "expense"
  }
}