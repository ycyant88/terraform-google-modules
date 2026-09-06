module "iam" {
  source        = "terraform-google-modules/iam/google"
  version       = "6.1.0"
  bindings      = var.bindings
  kms_key_rings = var.kms_key_rings
  mode          = var.mode
}
