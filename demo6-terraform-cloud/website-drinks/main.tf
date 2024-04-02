module "website-drinks" {
  source  = "app.terraform.io/gubrynowicz/wdi2024/aws"
  version = "~> 1.0" # Minors and patches

  name      = var.name
  site_code = var.site_code
}