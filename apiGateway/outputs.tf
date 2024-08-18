output "execution_arn" {
  value = aws_apid_gateway_rest_api.rest_api.execution_arn
}

output "cloudfront_domain_name" {
  value = aws_api_gateway_domain_name.domain_name.cloudfront_domain_name
}

output "cloudfront_zone_id" {
  value = aws_api_gateway_domain_name.domain_name.cloudfront_zone_id
}
