terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_vpc" "vpc_ex2" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc_ex2"
  }

}

resource "aws_subnet" "subnet_ex2_private" {
  vpc_id     = aws_vpc.vpc_ex2.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet_ex2_private"
  }

}
resource "aws_subnet" "subnet_ex2_public" {
  vpc_id     = aws_vpc.vpc_ex2.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "subnet_ex2_public"
  }
}


resource "aws_internet_gateway" "igw_ex2" {
  vpc_id = aws_vpc.vpc_ex2.id

  tags = {
    Name = "igw_ex2"
  }
}


resource "aws_route_table" "rtb_ex2_public" {
  vpc_id = aws_vpc.vpc_ex2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_ex2.id
  }

  tags = {
    Name = "rtb_ex2_public"
  }
}

resource "aws_route_table_association" "rtb_assoc_ex2_public" {
  subnet_id      = aws_subnet.subnet_ex2_public.id
  route_table_id = aws_route_table.rtb_ex2_public.id

}
