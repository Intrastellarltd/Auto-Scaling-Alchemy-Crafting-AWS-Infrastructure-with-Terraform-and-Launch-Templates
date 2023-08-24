# Define Local Values in Terraform
locals {
  owners      = var.business_division
  environment = var.environment
  name        = "${var.business_division}-${var.environment}"

  common_tags = {
    owners      = local.owners
    environment = local.environment
  }

  asg_tags = [
    {
      key                 = "auto-scaling-project"
      value               = "using-launch-templates"
      propagate_at_launch = true
    },
    {
      key                 = "second-key"
      value               = "second-value"
      propagate_at_launch = true
    },
  ]
}
