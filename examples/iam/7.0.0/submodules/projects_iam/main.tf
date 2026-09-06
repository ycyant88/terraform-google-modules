module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "7.0.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  projects             = var.projects
}
