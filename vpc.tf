# VPC Setup 
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"  
}

# Subnet for EC2 instance
resource "aws_subnet" "main_subnet_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"  
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "main_subnet_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"  
  availability_zone = "us-east-1b"
}

# Subnet for RDS 
resource "aws_subnet" "rds_subnet_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.3.0/24"  
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "rds_subnet_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.4.0/24"  
  availability_zone = "us-east-1b"
}
