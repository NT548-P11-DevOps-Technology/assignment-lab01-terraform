resource "aws_subnet" "public_subnets" {
    count      = length(var.public_subnet_cidrs)
    vpc_id     = var.vpc_id
    cidr_block = element(var.public_subnet_cidrs, count.index)
    map_public_ip_on_launch = var.map_public_ip_on_launch   
    tags = {
    Name = format("Public SN %d %s", count.index+1, var.public_subnet_names[count.index]) }
}
 
resource "aws_subnet" "private_subnets" {
    count      = length(var.private_subnet_cidrs)
    vpc_id     = var.vpc_id
    cidr_block = element(var.private_subnet_cidrs, count.index)

    tags = {
    Name = format("Private SN %d %s", count.index+1, var.private_subnet_names[count.index]) }
}