resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_owner_id = "827190588206"
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.default_vpc_id
  peer_region   = "us-east-1"
#  default_vpc_cidr_block  = var.default_vpc_cidr_block
#  default_route_table = var.default_route_table
}
