# Task: Enable S3 versioning using terraform

resource "aws_s3_bucket" "s3_ran_bucket" {
  bucket = "nautilus-s3-16915"
  acl    = "private"

  tags = {
    Name        = "nautilus-s3-16915"
  }
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.s3_ran_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}