resource "aws_s3_bucket" "bucket" {
  bucket = "datacenter-s3-24244"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [aws_s3_bucket_public_access_block.example]
  bucket = aws_s3_bucket.bucket.id
  acl = "public-read"
}