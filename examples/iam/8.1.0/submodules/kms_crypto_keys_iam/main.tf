module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "8.1.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  kms_crypto_keys      = var.kms_crypto_keys
  mode                 = var.mode
}
