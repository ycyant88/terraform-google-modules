module "iam" {
  source        = "terraform-google-modules/iam/google"
  version       = "6.0.0"
  bindings      = var.bindings
  mode          = var.mode
  organizations = var.organizations
}
