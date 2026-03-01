# Task: Create a private S3 bucket

resource "aws_s3_bucket" "bucket" {
  bucket = "datacenter-s3-29775"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [aws_s3_bucket_public_access_block.example]
  bucket = aws_s3_bucket.bucket.id
  acl = "private"
}