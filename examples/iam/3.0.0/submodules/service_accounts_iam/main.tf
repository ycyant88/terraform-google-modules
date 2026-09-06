module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "3.0.0"
  bindings             = var.bindings
  bindings_num         = var.bindings_num
  mode                 = var.mode
  project              = var.project
  service_accounts     = var.service_accounts
  service_accounts_num = var.service_accounts_num
}
