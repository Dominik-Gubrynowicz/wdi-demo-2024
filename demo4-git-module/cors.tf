resource "aws_s3_bucket_cors_configuration" "example" {
  bucket = aws_s3_bucket.storage.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST", "GET"]
    allowed_origins = ["https://gubrynowicz.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}