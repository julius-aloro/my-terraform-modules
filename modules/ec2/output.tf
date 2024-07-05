# EC2 Outputs

output "out_instance_private_dns" {
  description = "private DNS of EC2 Instance (if applicable)"
  value       = aws_instance.ec2-instance.private_dns
}

output "out_instance_private_ip" {
  description = "private IP of EC2 instance"
  value       = aws_instance.ec2-instance.private_ip
}

output "out_instance_public_dns" {
  description = "public DNS of EC2 instance (if applicable)"
  value       = aws_instance.ec2-instance.public_dns
}

output "out_instance_public_ip" {
  description = "public DNS of EC2 instance (if applicable)"
  value       = aws_instance.ec2-instance.public_ip
}

output "out_instance_instance_id" {
  description = "instance id of created instance"
  value       = aws_instance.ec2-instance.id
}