provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cdir 

  tags = {
    Name = var.vpc_name
  }
}

resource aws_subnet "subnet" {

    vpc_id = aws_vpc.vpc1.id
    cidr_block = var.subnet_cidr[0]
    availability_zone = var.az[0]
    tags = {
        Name = "my-first-vpc"
    }
}

