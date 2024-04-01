module "website-travel" {
  source = "s3::https://s3-eu-west-1.amazonaws.com/wdi2024-modules/module-s3-website.zip"

  name      = var.name
  site_code = var.site_code
}