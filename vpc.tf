resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  instance_tenancy     = "default"
}

resource "aws_subnet" "subnet_public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_public_cidr_block
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone
}

resource "aws_subnet" "subnet_private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_private_1_cidr_block
  availability_zone = var.availability_zone
}

resource "aws_subnet" "subnet_private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_private_2_cidr_block
  availability_zone = var.availability_zone
}
