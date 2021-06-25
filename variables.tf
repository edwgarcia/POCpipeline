variable "vpc_cidr_block" {
  type        = string
  description = "The cidr for vpc"
}

variable "subnet_public_cidr_block" {
  type        = string
  description = "The cidr for public subnet"
}

variable "subnet_private_1_cidr_block" {
  type        = string
  description = "The cidr for 1 private subnet"
}

variable "subnet_private_2_cidr_block" {
  type        = string
  description = "The cidr for 2 private subnet"
}

variable "availability_zone" {
  type        = string
  description = "AZ to start the instance in"
}

variable "ami" {
  type        = string
  description = "AMI to use for the instance"
}

variable "instance_type" {
  type        = string
  description = "Type of instance to start."
}

variable "private_ips_public_instance" {
  type        = list(string)
  description = "Private IP address to associate with the public instance in a VPC."
}

variable "private_ips_private_instance" {
  type        = list(string)
  description = "Private IP address to associate with the private instance in a VPC"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "This is the AWS access key."
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "This is the AWS secret key"
}

variable "AWS_SESSION_TOKEN" {
  type        = string
  description = "Session token for validating temporary credentials"
}
