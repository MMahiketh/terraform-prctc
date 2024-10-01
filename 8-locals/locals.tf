locals {
  zone_id = "Z02855522FE67JKRUDSDP"
  domain_name = "mahdo.site"
  instance_type = var.environment == "PROD" ? "t3.small" : "t3.micro"
}