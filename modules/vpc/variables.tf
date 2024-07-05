variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
  nullable    = false
}

variable "vpc_instance_tenancy" {
  description = "Set the tenancy type of VPC"
  type        = string
  default     = "default"
  validation {
    condition     = var.vpc_instance_tenancy == "default" || var.vpc_instance_tenancy == "dedicated"
    error_message = "Invalid value for vpc_instance_tenancy. Must be 'default' or 'dedicated'."
  }
  nullable = false
}

variable "vpc_tags" {
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

