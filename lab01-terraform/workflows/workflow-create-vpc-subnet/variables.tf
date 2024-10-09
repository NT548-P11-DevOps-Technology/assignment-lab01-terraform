variable "vpc_cidr" {
  type        = string
  default = "10.0.0.0/16"
}
variable "vpc_name" {
  type        = string
  default = "th1-vpc"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  default = ["10.0.0.0/24"]
}
variable "private_subnet_cidrs" {
  type        = list(string)
  default = ["10.0.1.0/24"] 
}

variable "public_subnet_names" {
  type    = list(string)
  default = ["PL-SN1","PL-SN2"]
  
}
variable "private_subnet_names" {
  type    = list(string)
  default = ["PR-SN1", "PR-SN2"]
}


