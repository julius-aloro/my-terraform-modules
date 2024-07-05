resource "aws_route" "route" {
  route_table_id         = var.route_route_table_id
  destination_cidr_block = var.route_destination_cidr_block
  gateway_id             = var.route_gateway_id
  nat_gateway_id         = var.route_nat_gateway_id
}