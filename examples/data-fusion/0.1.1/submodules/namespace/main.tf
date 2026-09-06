module "data-fusion" {
  source      = "terraform-google-modules/data-fusion/google"
  version     = "0.1.1"
  name        = var.name
  preferences = var.preferences
}
