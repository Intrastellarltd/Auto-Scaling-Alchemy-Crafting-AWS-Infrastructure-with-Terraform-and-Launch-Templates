# AWS EC2 Instance Terraform Outputs

output "ec2_bastion_public_instance_ids" {
  description = "Public Bastion Hosts Instance IDs"
  value       = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
  description = "Public Bastion Hosts IP Addresses"
  value       = module.ec2_public.public_ip 
}

