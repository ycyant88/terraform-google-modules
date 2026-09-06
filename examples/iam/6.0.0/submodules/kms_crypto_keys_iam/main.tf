module "iam" {
  source          = "terraform-google-modules/iam/google"
  version         = "6.0.0"
  bindings        = var.bindings
  kms_crypto_keys = var.kms_crypto_keys
  mode            = var.mode
}
