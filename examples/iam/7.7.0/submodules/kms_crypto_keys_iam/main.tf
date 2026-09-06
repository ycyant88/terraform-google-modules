module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "7.7.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  kms_crypto_keys      = var.kms_crypto_keys
  mode                 = var.mode
}
