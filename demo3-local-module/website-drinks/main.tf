module "website-drinks" {
  source = "../../../terraform-aws-wdi2024"

  name      = var.name
  site_code = var.site_code
}