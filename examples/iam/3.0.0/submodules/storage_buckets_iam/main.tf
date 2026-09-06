module "iam" {
  source              = "terraform-google-modules/iam/google"
  version             = "3.0.0"
  bindings            = var.bindings
  bindings_num        = var.bindings_num
  mode                = var.mode
  storage_buckets     = var.storage_buckets
  storage_buckets_num = var.storage_buckets_num
}
