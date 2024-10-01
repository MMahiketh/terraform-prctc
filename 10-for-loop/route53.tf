resource "aws_route53_record" "expense" {
  for_each        = var.servers
  zone_id         = local.zone_id
  type            = "A"
  ttl             = 300
  name            = "${each.value[1]}${local.domain_name}"
  records         = [aws_instance.expense[each.key][each.value[2]]]
  allow_overwrite = true
}