# Variables

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment Variable"
  type        = string
  default     = "development"
}

variable "business_division" {
  description = "Business Division"
  type        = string
  default     = "devops"
}
