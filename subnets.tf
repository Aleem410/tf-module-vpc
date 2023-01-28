resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidr_block)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnet_cidr_block, count.index )

  tags = {
    Name = "${var.env}-public_subnet-${count.index}"
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidr_block)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnet_cidr_block, count.index )

  tags = {
    Name = "${var.env}-private_subnet-${count.index}"
  }
}
