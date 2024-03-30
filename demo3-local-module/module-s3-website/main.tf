resource "aws_s3_bucket" "storage" {
  bucket_prefix = "${var.name}-bucket-demo"
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
    resources = ["${aws_s3_bucket.storage.arn}/*"]
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
  for_each = fileset("${path.root}/${var.site_code}", "**/**")

  key          = each.value
  source       = "${path.root}/${var.site_code}/${each.value}"
  etag         = filemd5("${path.root}/${var.site_code}/${each.value}")
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