output "ec2_public_ip" {
  value       = aws_instance.my_ec2_instance.public_ip
  sensitive   = false
  description = "Public IP of instance created using terraform"
}
