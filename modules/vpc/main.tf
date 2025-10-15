locals {
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = { Name = "vpc-01" }
}

resource "aws_subnet" "main-public" {
  vpc_id                  = aws_vpc.main.id
  count                   = length(var.public_subnet_cidr)
  cidr_block              = element(var.public_subnet_cidr, count.index)
  availability_zone       = element(local.availability_zones, count.index)
  map_public_ip_on_launch = true

  tags = { Name = "subnet-public-${count.index}" }
}


resource "aws_subnet" "main-private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr_db 

  tags = {
    Name = "subnet-db"
  }
}


resource "aws_subnet" "main-backend" {
  count             = length(var.private_subnet_cidr)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.private_subnet_cidr,count.index)
  availability_zone = element(local.availability_zones, count.index)
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-${count.index}"
    Role = "main-backend"
  }
}

resource "aws_route_table" "main-backend-rt" {
  count  = length(var.private_subnet_cidr)
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main[count.index].id
  }

  tags = {
    Name = "rt-backend-privada-${count.index}"
  }
}

resource "aws_route_table_association" "main-backend-assoc" {
  count          = length(var.private_subnet_cidr)
  subnet_id      = element(aws_subnet.main-backend[*].id, count.index)
  route_table_id = element(aws_route_table.main-backend-rt[*].id, count.index)
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags   = { Name = "igw" }
}

resource "aws_eip" "nat" {
  count = length(local.availability_zones)
  vpc   = true
  tags  = { Name = "eip-natgw-${count.index}" }
}

resource "aws_nat_gateway" "main" {
  count         = length(local.availability_zones)
  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.main-public[count.index].id

  tags = { Name = "natgw-${count.index}" }
}

resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = { Name = "rt-public" }
}

resource "aws_route_table" "main-private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main[0].id  
  }

  tags = { Name = "rt-privada" }
}

resource "aws_route_table_association" "main-public" {
  count          = length(aws_subnet.main-public)
  subnet_id      = element(aws_subnet.main-public[*].id, count.index)
  route_table_id = aws_route_table.main-public.id
}


resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.main-private.id
  route_table_id = aws_route_table.main-private.id
}


resource "aws_security_group" "main" {
  name        = "main-sg"
  description = "main security group"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
