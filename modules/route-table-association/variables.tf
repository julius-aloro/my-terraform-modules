variable "route_table_association_subnet_id" {
  description = "The subnet ID to associate with route table"
  # Example: ["rtb-0240a2fe812e5e014", "rtb-0240a2fe812e5e011"]
  type     = list(string)
  nullable = false
}

variable "route_table_association_route_table_id" {
  description = "The ID of the route table the subnet to be associated with"
  # Example: "rtb-0240a2fe812e5e014"
  type     = string
  nullable = false
}