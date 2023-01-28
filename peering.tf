resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_vpc_id   = var.default_vpc_id
  vpc_id        = aws_vpc.main.id
  peer_region   = "us-east-1"
#  default_vpc_cidr_block  = var.default_vpc_cidr_block
#  default_route_table = var.default_route_table
}

output "vpc_peering-_id" {
  value = aws_vpc_peering_connection.vpc_peering.id
}