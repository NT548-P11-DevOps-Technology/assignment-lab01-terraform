# Output vpc id
output "vpc_id" {
  value = module.vpc.vpc_id
}

# Output internet gateway id
output "internet_gateway_id" {
  value = module.internet_gateway.igw_id
}


