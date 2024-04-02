module "website-travel" {
  source = "git@github.com:Dominik-Gubrynowicz/terraform-aws-wdi2024.git//s3-website?ref=main"

  name      = var.name
  site_code = var.site_code
}