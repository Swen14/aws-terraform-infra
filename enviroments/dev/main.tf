module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  environment         = var.environment
}

module "security_group" {
  source = "../../modules/security-group"

  vpc_id            = module.vpc.vpc_id
  environment       = var.environment
  allowed_http_cidr = var.allowed_http_cidr
  allowed_ssh_cidr  = var.allowed_ssh_cidr
}
