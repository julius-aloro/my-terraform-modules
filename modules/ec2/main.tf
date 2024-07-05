resource "aws_instance" "ec2-instance" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  security_groups             = var.instance_security_group
  subnet_id                   = var.instance_subnet_id
  availability_zone           = var.instance_availability_zone
  key_name                    = var.instance_key_name
  associate_public_ip_address = var.instance_associate_public_ip_address
  tags                        = var.instance_tags
}