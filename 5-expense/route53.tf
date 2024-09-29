resource "aws_route53_record" "expense" {
  count           = length(var.servers)
  zone_id         = var.zone_id
  name            = "${var.servers[count.index]}.${var.domain_name}"
  type            = "A"
  ttl             = 300
  records         = [aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}
