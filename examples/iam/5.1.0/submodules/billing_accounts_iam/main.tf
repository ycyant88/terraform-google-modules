module "iam" {
  source              = "terraform-google-modules/iam/google"
  version             = "5.1.0"
  billing_account_ids = var.billing_account_ids
  bindings            = var.bindings
  mode                = var.mode
}
