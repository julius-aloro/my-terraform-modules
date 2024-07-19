resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr_block
  tags       = var.vpc_tags
}

resource "aws_subnet" "subnets" {
  for_each = var.subnets_cidr_blocks

  vpc_id            = aws_vpc.main-vpc.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name      = each.value.tag_name
    CreatedBy = each.value.tag_created_by
    CreatedOn = each.value.tag_created_on
  }
}




















# resource "aws_subnet" "subnets" {
#   for_each = { for subnet in var.subnet_definitions : subnet.Name => subnet }

#   vpc_id            = aws_vpc.main-vpc.id
#   availability_zone = each.value.availability_zone
#   cidr_block        = each.value.cidr_block
#   tags = {
#     Name      = each.value.name
#     CreatedBy = each.value.CreatedBy
#     CreatedOn = each.value.CreatedOn
#   }
# }