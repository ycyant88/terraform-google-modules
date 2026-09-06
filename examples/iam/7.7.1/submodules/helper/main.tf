module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "7.7.1"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  entities             = var.entities
  mode                 = var.mode
}
