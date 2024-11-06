resource "aws_vpc" "testvpc" {
  cidr_block = "10.0.0.0/16"

  
  tags = {
    Name = "testvpc"
  }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id
}

resource "aws_subnet" "pubsub1" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "pubsub1"
  }
}

resource "aws_subnet" "pubsub2" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "pubsub2"
  }
}

resource "aws_subnet" "prisub" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "prisub"
  }
}
