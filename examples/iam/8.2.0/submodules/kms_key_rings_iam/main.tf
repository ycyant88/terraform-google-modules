module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "8.2.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  kms_key_rings        = var.kms_key_rings
  mode                 = var.mode
}
