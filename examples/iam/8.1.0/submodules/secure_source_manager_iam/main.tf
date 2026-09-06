module "iam" {
  source     = "terraform-google-modules/iam/google"
  version    = "8.1.0"
  bindings   = var.bindings
  entity_ids = var.entity_ids
  location   = var.location
  mode       = var.mode
  project    = var.project
}
