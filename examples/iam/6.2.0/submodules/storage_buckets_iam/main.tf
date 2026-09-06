module "iam" {
  source          = "terraform-google-modules/iam/google"
  version         = "6.2.0"
  bindings        = var.bindings
  mode            = var.mode
  storage_buckets = var.storage_buckets
}
