resource "aws_instance" "intancia_publica" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.public_instance.id
    device_index         = 0
  }
}

resource "aws_instance" "intancia_privada" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.private_instance.id
    device_index         = 0
  }
}
