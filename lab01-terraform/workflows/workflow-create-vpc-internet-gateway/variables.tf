#VPC variables
variable "vpc_cidr" {
  type        = string
  default = "10.0.0.0/16"
}
variable "vpc_name" {
  type        = string
  default = "th1-vpc"
}

#Internet Gateway variables
variable "igw_name" {
  type        = string
  default = "igw_TH1"
}

