module "iam" {
  source           = "terraform-google-modules/iam/google"
  version          = "6.2.0"
  bindings         = var.bindings
  mode             = var.mode
  project          = var.project
  service_accounts = var.service_accounts
}
