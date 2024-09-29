variable "devops_ami" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "common_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "servers" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Environment = "DEV"
    Terraform   = "true"
  }
}

variable "zone_id" {
  type    = string
  default = "Z02855522FE67JKRUDSDP"
}

variable "domain_name" {
  type    = string
  default = "mahdo.site"
}
