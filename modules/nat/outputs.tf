# modules/nat/outputs.tf

output "nat_gateway_id" {
  value = aws_nat_gateway.main.id
}