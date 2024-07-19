# VPC ID Output

output "out_vpc_id" {
  description = "VPC id of created VPC"
  value       = aws_vpc.main-vpc.id
}