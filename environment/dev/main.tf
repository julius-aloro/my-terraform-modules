provider "aws" {
  region = "ap-southeast-1"
}

module "vpc_and_subnets" {
  source = "../../modules/vpc-subnets"
}