module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "6.3.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  project              = var.project
  service_accounts     = var.service_accounts
}
