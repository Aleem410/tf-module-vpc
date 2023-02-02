resource "aws_network_acl" "app" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "app"
  }
}
resource "aws_network_acl_association" "app" {
  count = length(aws_subnet.app_subnets.*.id)
  network_acl_id = aws_network_acl.app.id
  subnet_id      = element(aws_subnet.app_subnets.*.id, count.index)
}

resource "aws_network_acl" "db" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "db"
  }
}
resource "aws_network_acl_association" "db" {
  count = length(aws_subnet.db_subnets.*.id)
  network_acl_id = aws_network_acl.db.id
  subnet_id      = element(aws_subnet.db_subnets.*.id, count.index)
}

#  egress {
#    protocol   = "-1"
#    rule_no    = 100
#    action     = "allow"
#    cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
#    from_port  = 0
#    to_port    = 0
#  }
#
#  ingress {
#    protocol   = "tcp"
#    rule_no    = 100
#    action     = "allow"
#    cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
#    from_port  = 22
#    to_port    = 22
#  }