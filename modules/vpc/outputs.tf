output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "default_sg_id" {
  value = module.vpc.default_security_group_id
}

output "db_subnet_group_name" {
  value = module.vpc.database_subnet_group
}
