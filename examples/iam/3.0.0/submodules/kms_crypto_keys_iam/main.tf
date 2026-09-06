module "iam" {
  source              = "terraform-google-modules/iam/google"
  version             = "3.0.0"
  bindings            = var.bindings
  bindings_num        = var.bindings_num
  kms_crypto_keys     = var.kms_crypto_keys
  kms_crypto_keys_num = var.kms_crypto_keys_num
  mode                = var.mode
}
