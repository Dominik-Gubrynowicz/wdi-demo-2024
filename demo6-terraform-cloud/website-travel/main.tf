module "website-travel" {
  source  = "app.terraform.io/gubrynowicz/wdi2024/aws"
  version = "~> 1.0.0" # Patches only

  name      = var.name
  site_code = var.site_code
}