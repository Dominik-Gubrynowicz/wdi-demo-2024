module "website-travel" {
  source  = "terrareg.gubrynowicz.com/travel__wdi2024/s3-website/aws"
  version = "~> 1.0.0" # Patches only

  name      = var.name
  site_code = var.site_code
}