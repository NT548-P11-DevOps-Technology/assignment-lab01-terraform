variable "vpc_name" {
  description = "value of the VPC name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the NAT Gateway will be created"
  type        = string
}

variable "name_gateway" {
  description = "Name of the NAT Gateway"
  type        = string
}

variable "depends_on" {
  description = "Resources that the NAT Gateway depends on"
  type        = list(string)
}

variable "public_subnet" {
  description = "CIDR blocks for the public subnets"
  type        = string
  
}