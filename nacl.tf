#resource "aws_network_acl" "main" {
#  vpc_id = aws_vpc.main.id
#
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
#
#  tags = {
#    Name = "main"
#  }
#}
#
#resource "aws_network_acl_association" "main" {
#  network_acl_id = aws_network_acl.main.id
#  subnet_id      = aws_subnet.db_subnets.id
#}