variable "subnet_availability_zone" {
  description = "availability zone the subnet is deployed"
  type = string
  nullable = false
}

variable "subnet_cidr_block" {
  description = "CIDR block of the subnet"
  type = string
  nullable = false
}

variable "subnet_map_public_ip_on_launch" {
  description = "Instances launched into the subnet should be assigned a public IP address"
  type = bool
  nullable = false
}

variable "subnet_vpc_id" {
  description = "VPC ID of VPC the subnet is attached"
  type = string
  nullable = false
}

variable "subnet_tags" {
  description = "Associated tags for this resource"
  type        = map(string)
  default = {
    Name        = ""
    CreatedBy   = "Terraform"
  }
  nullable = false
}