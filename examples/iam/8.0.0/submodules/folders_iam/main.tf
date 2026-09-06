module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "8.0.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  folders              = var.folders
  mode                 = var.mode
}
