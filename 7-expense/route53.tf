resource "aws_route53_record" "expense" {
  count           = length(var.servers)
  zone_id         = var.zone_id
  type            = "A"
  ttl             = 300
  name            = var.servers[count.index] == "frontend" ? var.domain_name : "${var.servers[count.index]}.${var.domain_name}"
  records         = var.servers[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}