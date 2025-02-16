# DB Subnet Group 
resource "aws_db_subnet_group" "my_subnet_group" {
  name        = "my-db-subnet-group"
  description = "My DB subnet group"
  subnet_ids  = [
    aws_subnet.rds_subnet_a.id,
    aws_subnet.rds_subnet_b.id
  ]

  tags = {
    Name = "my-db-subnet-group"
  }
}

# DB Instance Configuration
resource "aws_db_instance" "my_db" {
  identifier           = "mydb-instance"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  allocated_storage    = 20
  db_name              = "mydatabase"
  username             = "*****"
  password             = "*****"
  skip_final_snapshot  = true
  publicly_accessible  = false
  db_subnet_group_name = aws_db_subnet_group.my_subnet_group.id
}
