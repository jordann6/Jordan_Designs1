# EC2 Instance Setup
resource "aws_instance" "web" {
  ami           = "ami-04b4f1a9cf54c11d0"  
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.main_subnet_a.id  
  tags = {
    Name = "My EC2 Instance"
  }
}
