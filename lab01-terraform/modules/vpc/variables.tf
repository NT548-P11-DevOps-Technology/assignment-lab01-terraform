variable "vpc_cidr" {
  type        = string
  description = "IPv4 CIDR block for VPC should have prefix be 16 (16)"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
}

# variable "sc-default" {
#   description = "Default security group"
#   type        = string
  
# }