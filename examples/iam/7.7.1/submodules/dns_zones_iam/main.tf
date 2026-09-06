module "iam" {
  source        = "terraform-google-modules/iam/google"
  version       = "7.7.1"
  bindings      = var.bindings
  managed_zones = var.managed_zones
  mode          = var.mode
  project       = var.project
}
