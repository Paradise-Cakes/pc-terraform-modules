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

variable "domain_name" {
  description = "The domain name for the API Gateway"
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
