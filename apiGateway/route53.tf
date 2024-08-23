resource "aws_route53_record" "api_record" {
  zone_id = var.api_zone_id
  name    = var.environment == "prod" ? var.prod_api_name : var.dev_api_name
  type    = "A"

  alias {
    name                   = aws_api_gateway_domain_name.domain_name.cloudfront_domain_name
    zone_id                = aws_api_gateway_domain_name.domain_name.cloudfront_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "api_validation_record" {
  for_each = {
    for dvo in var.acm_certificate_api_domain_validation_options : dvo.domain_name => {
      name    = dvo.resource_record_name
      record  = dvo.resource_record_value
      type    = dvo.resource_record_type
      zone_id = var.api_zone_id
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = each.value.zone_id
}

resource "aws_route53_record" "api_ns" {
  count = var.environment == "prod" ? 1 : 0

  zone_id = var.website_zone_id
  name    = var.prod_api_name
  type    = "NS"
  ttl     = 300

  records = var.prod_api_name_servers
}

resource "aws_route53_record" "dev_api_ns" {
  count = var.environment == "prod" ? 1 : 0

  zone_id = var.website_zone_id
  name    = var.dev_api_name
  type    = "NS"
  ttl     = 300

  records = var.dev_api_name_servers
}
