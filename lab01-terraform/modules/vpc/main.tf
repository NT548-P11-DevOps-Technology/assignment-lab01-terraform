resource "aws_vpc" "vpc_lab1" {
  cidr_block = var.vpc_cidr
  # default_security_group_id = var.sc-default
  tags = {
    "Name" = var.vpc_name
  }
} 