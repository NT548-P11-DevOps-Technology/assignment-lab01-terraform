variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
}

variable "vpc_id" {
  description = "VPC ID to associate with the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Enable public IP assignment"
  type        = bool
  default     = false
}

variable "public_subnet_names" {
  type    = list(string)
  description = "List names of public subnets"
}
variable "private_subnet_names" {
  type    = list(string)
  description = "List names of public subnets"
}