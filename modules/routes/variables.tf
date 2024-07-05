variable "route_route_table_id" {
  description = "The ID of the routing table this route is going to be associated"
  # Example: "rtb-4fbb3ac4"
  type     = string
  nullable = false
}

variable "route_destination_cidr_block" {
  description = "Destination CIDR block for this route"
  # Example: "0.0.0.0/0"
  type     = string
  nullable = false
}

variable "route_gateway_id" {
  description = "an ID of a virtuap private gateway or an VPC Internet Gateway"
  # Example: "igw-037277836228b26ed"
  type     = string
  nullable = false
}

variable "route_nat_gateway_id" {
  description = "an ID of a VPC NAT Gateway"
  type        = string
  nullable    = true
}