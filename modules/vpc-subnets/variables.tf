# VPC Variables

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  description = "Resource Tags"
  type        = map(string)
  default = {
    Name      = "main-vpc"
    CreatedOn = "00-00-0000"
    CreatedBy = "terraform"
  }
  nullable = false
}

variable "subnets_cidr_blocks" {
  description = "Subnets CIDR Blocks"
  type = map(object({
    cidr           = string
    az             = string
    tag_name       = string
    tag_created_by = string
    tag_created_on = string
  }))
  default = {
    "subnet1" = {
      cidr           = "10.0.0.0/24"
      az             = "ap-southeast-1a"
      tag_name       = "public-subnet-1"
      tag_created_by = "terraform"
      tag_created_on = "01-01-2024"
    }
  }
}