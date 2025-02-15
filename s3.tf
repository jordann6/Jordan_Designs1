resource "aws_s3_bucket" "backup_bucket" {
  bucket = "jordan-designs-backup"  # Make sure this name is globally unique
}
