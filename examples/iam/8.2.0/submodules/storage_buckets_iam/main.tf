module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "8.2.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  storage_buckets      = var.storage_buckets
}
