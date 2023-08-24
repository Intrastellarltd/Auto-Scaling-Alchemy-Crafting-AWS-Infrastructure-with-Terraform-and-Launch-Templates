# VPC Output

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "VPC CIDR Block"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "Private Subnets IDs"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public Subnets IDs"
  value       = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "AWS NAT Gateway Public IP Addresses"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "List of Availability Zones"
  value       = module.vpc.azs
}