variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "instance_names" {
  type = list(string)
  default = ["mysql", "backend", "frontend"]
}