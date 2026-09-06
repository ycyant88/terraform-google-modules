module "iam" {
  source        = "terraform-google-modules/iam/google"
  version       = "5.0.0"
  bindings      = var.bindings
  mode          = var.mode
  organizations = var.organizations
}
