variable "instance_ami" {
  description = "AMI used for the instance"
  type        = string
  nullable    = false
}

variable "instance_type" {
  description = "Instance type associated to EC2 instance"
  type        = string
  nullable    = false
}

variable "instance_security_group" {
  description = "Security Groups assigned to an instance"
  type        = list(string)
  nullable    = false
}

variable "instance_subnet_id" {
  description = "Subnet the instance is deployed"
  type        = string
  nullable    = false
}

variable "instance_availability_zone" {
  description = "The Availability Zone where the instance is deployed"
  type        = string
  nullable    = false
}

variable "instance_key_name" {
  description = "The key pair used during instance commissioning"
  nullable    = false
}

variable "instance_associate_public_ip_address" {
  description = "Determine whether automatically allocate with public IP address"
  default     = false
}

variable "instance_tags" {
  description = "Associated tags for this resource"
  type        = map(string)
  default = {
    Project     = ""
    Environment = ""
    Name        = ""
    CreatedBy   = "Terraform"
  }
  nullable = false
}