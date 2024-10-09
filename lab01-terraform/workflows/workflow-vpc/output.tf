output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.subnet.public_subnet_ids  
}

output "private_subnet_ids" {
  value = module.subnet.private_subnet_ids
}


output "internet_gateway_id" {
  value = module.internet_gateway.igw_id
}

output "security_group_id" {
  value = module.default_security_group.security_group_id
}

# output "nat_gateway_id" {
#   value = module.nat_gateway.nat_gateway_id
# }

