module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "7.4.0"
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings
  mode                 = var.mode
  project              = var.project
  subnets              = var.subnets
  subnets_region       = var.subnets_region
}
