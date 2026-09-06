module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "6.3.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  kms_key_rings        = var.kms_key_rings
  mode                 = var.mode
}
