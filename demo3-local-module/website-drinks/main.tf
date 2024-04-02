module "website-drinks" {
  source = "../../../terraform-aws-wdi2024/s3-website"

  name      = var.name
  site_code = var.site_code
}