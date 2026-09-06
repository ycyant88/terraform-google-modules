module "iam" {
  source            = "terraform-google-modules/iam/google"
  version           = "3.0.0"
  bindings          = var.bindings
  bindings_num      = var.bindings_num
  kms_key_rings     = var.kms_key_rings
  kms_key_rings_num = var.kms_key_rings_num
  mode              = var.mode
}
