module "vpc" {
  source              = "terraform-aws-modules/vpc/aws"
  version             = "2.63.0"
  name                = "${var.app_name}-vpc"
  cidr                = var.vpc_cidr
  azs                 = var.azs
  private_subnets     = var.private_subnets
  public_subnets      = var.public_subnets
  database_subnets    = var.database_subnets
  elasticache_subnets = var.elasticcache_subnets
  enable_ipv6         = true
  enable_nat_gateway  = true
  single_nat_gateway  = true
  tags                = var.tags
}

resource "aws_ssm_parameter" "private-subnet-0" {
  name        = "private-subnet-0"
  type        = "String"
  description = "Private Subnet ID"
  value       = module.vpc.private_subnets[0]
  tags        = var.tags
}

resource "aws_ssm_parameter" "security-group" {
  name        = "security-group"
  type        = "String"
  description = "Default Security group ID"
  value       = module.vpc.default_security_group_id
  tags        = var.tags
}