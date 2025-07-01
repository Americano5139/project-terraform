terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source       = "./modules/vpc"
  region       = var.aws_region
  cluster_name = var.cluster_name
}

module "rds" {
  source                 = "./modules/rds"
  db_security_group_ids = [module.vpc.default_sg_id]
  db_subnet_group_name  = module.vpc.db_subnet_group_name
  db_username           = var.db_username
  db_password           = var.db_password
}

# module "eks" {
#  source       = "./modules/eks"
#  region       = var.aws_region
#  cluster_name = var.cluster_name
#  vpc_id       = module.vpc.vpc_id
#  subnet_ids   = module.vpc.private_subnets
# }
