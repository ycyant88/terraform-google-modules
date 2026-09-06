module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "6.3.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  kms_crypto_keys      = var.kms_crypto_keys
  mode                 = var.mode
}
