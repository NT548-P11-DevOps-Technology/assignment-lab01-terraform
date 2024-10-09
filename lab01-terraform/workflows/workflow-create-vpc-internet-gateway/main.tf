provider "aws" {
  region = "ap-southeast-1"
  profile = "th1"
}

module "vpc" {
    source    = "../../modules/vpc"
    vpc_cidr  =  var.vpc_cidr
    vpc_name  = var.vpc_name
}


module "internet_gateway" {
  source = "../../modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  name   = var.igw_name
}


