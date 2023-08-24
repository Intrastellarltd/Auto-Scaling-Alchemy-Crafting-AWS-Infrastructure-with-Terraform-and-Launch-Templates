# AWS EC2 Security Group Terraform Module
module "private_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "4.0.0"

  name        = "private-sg"
  description = "Security Group with HTTP & SSH port open for the provided custom VPC Block (10.16.0.0/16)"
  vpc_id      = module.vpc.vpc_id

  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  egress_rules = ["all-all"]
  tags         = local.common_tags
}
