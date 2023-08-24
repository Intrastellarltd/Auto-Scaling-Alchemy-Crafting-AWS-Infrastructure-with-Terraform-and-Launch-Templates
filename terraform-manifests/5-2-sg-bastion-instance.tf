# AWS EC2 Security Group Terraform Module
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.0.0"

  name        = "public-bastion-sg"
  description = "Security Group with SSH port open to all, egress ports open to all"
  vpc_id      = module.vpc.vpc_id

  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags         = local.common_tags
}
