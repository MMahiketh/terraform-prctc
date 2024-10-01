variable "servers" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type = map(string)
  default = {
    Terraform   = "true"
    Environment = "DEV"
    project     = "expense"
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