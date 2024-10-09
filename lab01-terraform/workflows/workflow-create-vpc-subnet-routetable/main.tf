provider "aws" {
  region = "ap-southeast-1"
  profile = "th1"
}

module "vpc" {
    source    = "./modules/vpc"
    vpc_cidr  =  var.vpc_cidr
    vpc_name  = var.vpc_name
}

module "subnet" {
    source                = "./modules/subnet"
    vpc_id                = module.vpc.vpc_id
    public_subnet_cidrs = var.public_subnet_cidrs
    public_subnet_names = var.public_subnet_names
    private_subnet_names = var.private_subnet_names
    private_subnet_cidrs = var.private_subnet_cidrs
}


module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  name   = var.igw_name
}

module "default_security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
  name   = var.sg_name
  cidr_block_rule = var.cidr_block_rule
}

# Tạo NAT Gateway
# module "nat_gateway" {
#   source    = "./modules/nat_gateway"
#   subnet_id = module.public_subnet.subnet_id
#   name_gateway      = "nat-gateway"
# }

