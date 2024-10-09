# Create Elastic IP for NAT Gateway
resource "aws_eip" "nat" {
  depends_on = var.depends_on
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id    = var.public_subnet
  depends_on    = [aws_internet_gateway.ig]

  tags = {
    Name = "${var.vpc_name}-nat"
  }
}