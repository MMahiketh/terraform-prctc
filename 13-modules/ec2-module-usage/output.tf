output "public_ip" {
  value = module.an_instance.public_ip
}

output "private_ip" {
  value = module.an_instance.private_ip
}

output "instance_id" {
  value = module.an_instance.instance_id
}