resource "aws_acm_certificate_validation" "paradise_cakes" {
  certificate_arn         = var.api_acm_certificate_arn
  validation_record_fqdns = [for record in aws_route53_record.api_validation_record : record.fqdn]
}
