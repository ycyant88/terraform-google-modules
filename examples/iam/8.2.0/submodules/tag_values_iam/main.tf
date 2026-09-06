module "iam" {
  source     = "terraform-google-modules/iam/google"
  version    = "8.2.0"
  bindings   = var.bindings
  mode       = var.mode
  tag_values = var.tag_values
}
