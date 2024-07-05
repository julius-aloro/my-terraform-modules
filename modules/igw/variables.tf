variable "igw_vpc_id" {
  description = "VPC to associate this IGW to"
  type        = string
  nullable    = false
}

variable "igw_tags" {
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