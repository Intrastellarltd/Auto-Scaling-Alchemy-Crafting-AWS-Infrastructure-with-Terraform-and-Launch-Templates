# AWS EC2 Instance Terraform Variables

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key pair"
  type        = string
  default     = "tf-key"
}

variable "private_instance_count" {
  description = "AWS EC2 Instances Count"
  type        = number
  default     = 1
}
