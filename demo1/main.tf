resource "aws_s3_bucket" "storage" {
  bucket = "${var.name}-bucket-demo"
}

resource "aws_s3_bucket_policy" "storage_policy" {
  bucket = aws_s3_bucket.storage.id
  policy = data.aws_iam_policy_document.storage_policy.json

  depends_on = [aws_s3_bucket_public_access_block.storage_acl]
}

resource "aws_s3_bucket_public_access_block" "storage_acl" {
  bucket = aws_s3_bucket.storage.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

data "aws_iam_policy_document" "storage_policy" {
  statement {
    sid     = "AllowPublic"
    effect  = "Allow"
    actions = ["s3:GetObject"]
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    resources = ["arn:aws:s3:::${var.name}-bucket-demo/*"]
  }
}

locals {
  content_type_map = {
    "js"   = "application/json"
    "html" = "text/html"
    "css"  = "text/css"
  }
}

resource "aws_s3_object" "object" {
  bucket   = aws_s3_bucket.storage.id
  for_each = fileset("${path.module}/../drinks-website", "**/**")

  key          = each.value
  source       = "${path.module}/../drinks-website/${each.value}"
  etag         = filemd5("${path.module}/../drinks-website/${each.value}")
  content_type = lookup(local.content_type_map, split(".", each.value)[1], "text/html")
}

resource "aws_s3_bucket_website_configuration" "s3_website" {
  bucket = aws_s3_bucket.storage.id
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "404.html"
  }
}