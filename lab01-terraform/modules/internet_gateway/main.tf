resource "aws_internet_gateway" "igw_th1" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.name
  }
}
