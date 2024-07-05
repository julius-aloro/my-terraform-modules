variable "routetable_vpc_id" {
  description = "The VPC where this route is associated to"
  type = string
}

variable "routetable_tags" {
  description = "A tag of maps to apply to each resources"
  type        = map(string)
  default = {
    Project     = ""
    Environment = ""
    Name        = ""
    CreatedBy   = "Terraform"
  }
  nullable = false
}
