module "website-drinks" {
  source  = "terrareg.gubrynowicz.com/demo__wdi2024/s3-website/aws"
  version = "~> 1.0"

  name      = var.name
  site_code = var.site_code
}