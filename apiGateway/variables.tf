variable "api_gateway_name" {
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

variable "api_zone_id" {
  description = "The zone id of the API Gateway"
  type        = string
}

variable "website_zone_id" {
  description = "The zone id of the website"
  type        = string
}

variable "api_acm_certificate_arn" {
  description = "value of the ACM certificate ARN"
  type        = string
}

variable "api_domain_name" {
  description = "value of the API domain name"
  type        = string
}

variable "http_methods" {
  description = "The HTTP methods supported by the API Gateway"
  type = map(object({
    authorization = string
    authorizer_id = string
    lambda_uri    = string
  }))
}
