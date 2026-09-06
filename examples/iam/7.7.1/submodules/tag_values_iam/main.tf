module "iam" {
  source     = "terraform-google-modules/iam/google"
  version    = "7.7.1"
  bindings   = var.bindings
  mode       = var.mode
  tag_values = var.tag_values
}
