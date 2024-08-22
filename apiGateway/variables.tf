# modules/api_gateway/variables.tf

variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "The description of the API Gateway"
  type        = string
  default     = "API Gateway"
}

variable "binary_media_types" {
  description = "The binary media types supported by the API Gateway"
  type        = list(string)
  default     = ["multipart/form-data"]
}

variable "stage_name" {
  description = "The stage name of the API Gateway deployment"
  type        = string
}

variable "xray_tracing_enabled" {
  description = "Enable X-Ray tracing for the API Gateway"
  type        = bool
  default     = true
}

variable "cache_cluster_size" {
  description = "The size of the cache cluster for the stage"
  type        = string
  default     = "0.5"
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}

variable "prod_api_domain_name" {
  description = "The domain name for the prod API Gateway"
  type        = string
}

variable "dev_api_domain_name" {
  description = "The domain name for the dev API Gateway"
  type        = string
}

variable "lambda_function_arn" {
  description = "The ARN of the Lambda function to integrate with API Gateway"
  type        = string
}

variable "policy" {
  description = "The policy document for the API Gateway"
  type        = string
}

variable "app_arn" {
  description = "The arn of the application"
  type        = string
}

variable "environment" {
  description = "The environment of the application"
  type        = string
}

variable "dev_api_name" {
  description = "The name of the development API Gateway"
  type        = string
}

variable "prod_api_name" {
  description = "The name of the production API Gateway"
  type        = string
}

variable "api_zone_id" {
  description = "The zone id of the API Gateway"
  type        = string
}

variable "website_zone_id" {
  description = "The zone id of the website"
  type        = string
}

variable "acm_certificate_api_domain_validation_options" {
  description = "The domain validation options for the ACM certificate"
}

variable "prod_api_name_servers" {
  description = "The name servers for the prod API Gateway"
  type        = list(string)
}

variable "dev_api_name_servers" {
  description = "The name servers for the dev API Gateway"
  type        = list(string)
}

variable "api_acm_certificate_arn" {
  description = "value of the ACM certificate ARN"
  type        = string
}

variable "api_domain_name" {
  description = "value of the API domain name"
  type        = string
}
