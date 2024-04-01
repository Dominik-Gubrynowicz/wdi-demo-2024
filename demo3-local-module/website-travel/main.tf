module "website-travel" {
  source = "../../module-s3-website"

  name      = var.name
  site_code = var.site_code
}