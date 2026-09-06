module "iam" {
  source          = "terraform-google-modules/iam/google"
  version         = "5.0.0"
  bindings        = var.bindings
  kms_crypto_keys = var.kms_crypto_keys
  mode            = var.mode
}
