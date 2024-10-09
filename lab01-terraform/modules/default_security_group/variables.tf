variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "name" {
  description = "Name of the security group"
  type        = string
}

variable "cidr_block_rule" {
  description = "Network CIDR block for the security group"
  type        = string
}