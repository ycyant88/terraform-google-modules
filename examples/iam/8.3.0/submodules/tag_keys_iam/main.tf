module "iam" {
  source   = "terraform-google-modules/iam/google"
  version  = "8.3.0"
  bindings = var.bindings
  mode     = var.mode
  tag_keys = var.tag_keys
}
