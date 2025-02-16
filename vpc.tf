# VPC Setup (Ensure the CIDR block is large enough to accommodate multiple subnets)
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"  # Expand CIDR range if necessary
}

# Subnet for EC2 instance
resource "aws_subnet" "main_subnet_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"  # Make sure this block is available
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "main_subnet_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.2.0/24"  # Make sure this block is available
  availability_zone = "us-east-1b"
}

# Subnet for RDS 
resource "aws_subnet" "rds_subnet_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.3.0/24"  # Ensure this CIDR block does not conflict
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "rds_subnet_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.4.0/24"  # Ensure this CIDR block does not conflict
  availability_zone = "us-east-1b"
}
