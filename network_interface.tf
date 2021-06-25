resource "aws_network_interface" "public_instance" {
  subnet_id   = aws_subnet.subnet_public.id
  private_ips = var.private_ips_public_instance
}

resource "aws_network_interface" "private_instance" {
  subnet_id   = aws_subnet.subnet_private_1.id
  private_ips = var.private_ips_private_instance
}