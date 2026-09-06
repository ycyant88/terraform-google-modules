module "iam" {
  source   = "terraform-google-modules/iam/google"
  version  = "5.0.0"
  bindings = var.bindings
  entities = var.entities
  entity   = var.entity
  mode     = var.mode
}
