module "forseti" {
  source                 = "terraform-google-modules/forseti/google"
  version                = "5.2.0"
  client_enabled         = var.client_enabled
  client_service_account = var.client_service_account
  project_id             = var.project_id
  suffix                 = var.suffix
}
