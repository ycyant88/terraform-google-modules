module "iam" {
  source   = "terraform-google-modules/iam/google"
  version  = "6.2.0"
  bindings = var.bindings
  entities = var.entities
  mode     = var.mode
}
