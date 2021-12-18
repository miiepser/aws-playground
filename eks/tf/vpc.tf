resource "aws_vpc" "k8s" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "eks" {
  for_each          = var.zones
  vpc_id            = aws_vpc.k8s.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.key
  tags              = each.value.tags
}

