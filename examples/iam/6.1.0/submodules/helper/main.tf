module "iam" {
  source   = "terraform-google-modules/iam/google"
  version  = "6.1.0"
  bindings = var.bindings
  entities = var.entities
  mode     = var.mode
}
