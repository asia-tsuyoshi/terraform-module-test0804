// modules/network/main.tf

variable "cidr_block" {}

variable "availability_zone" {}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "example" {
  vpc_id            = aws_vpc.example.id
  availability_zone = var.availability_zone
  cidr_block        = var.cidr_block
}

output "vpc_id" {
  value = aws_vpc.example.id
}