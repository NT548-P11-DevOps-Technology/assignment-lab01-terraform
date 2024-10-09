provider "aws" {
  region = "ap-southeast-1"
  profile = "th1"
}

module "vpc" {
    source    = "../../modules/vpc"
    vpc_cidr  =  var.vpc_cidr
    vpc_name  = var.vpc_name
}

module "subnet" {
    source                = "../../modules/subnet"
    vpc_id                = module.vpc.vpc_id
    public_subnet_cidrs = var.public_subnet_cidrs
    public_subnet_names = var.public_subnet_names
    private_subnet_names = var.private_subnet_names
    private_subnet_cidrs = var.private_subnet_cidrs
}

