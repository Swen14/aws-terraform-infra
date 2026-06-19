module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones  = var.availability_zones
  environment         = var.environment
}

module "security_group" {
  source = "../../modules/security-group"

  vpc_id            = module.vpc.vpc_id
  environment       = var.environment
  allowed_http_cidr = var.allowed_http_cidr
  allowed_ssh_cidr  = var.allowed_ssh_cidr
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.security_group.web_sg_id
  environment       = var.environment
}

module "alb" {
  source = "../../modules/alb"

  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  security_group_id = module.security_group.web_sg_id
  instance_id       = module.ec2.instance_id
  environment       = var.environment
}
