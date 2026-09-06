module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "6.4.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  projects             = var.projects
}
