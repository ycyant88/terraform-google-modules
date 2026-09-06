module "iam" {
  source             = "terraform-google-modules/iam/google"
  version            = "8.1.0"
  bindings           = var.bindings
  cloud_run_services = var.cloud_run_services
  location           = var.location
  mode               = var.mode
  project            = var.project
}
