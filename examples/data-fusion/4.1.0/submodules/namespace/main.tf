module "data-fusion" {
  source      = "terraform-google-modules/data-fusion/google"
  version     = "4.1.0"
  name        = var.name
  preferences = var.preferences
}
