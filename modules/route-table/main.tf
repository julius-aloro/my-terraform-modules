resource "aws_route_table" "route_table" {
  vpc_id = var.routetable_vpc_id
  tags = var.routetable_tags
}