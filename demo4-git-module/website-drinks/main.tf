module "website-drinks" {
  source = "git@github.com:Dominik-Gubrynowicz/wdi-demo-2024.git//module-s3-website?ref=main"

  name      = var.name
  site_code = var.site_code
}