module "iam" {
  source                  = "terraform-google-modules/iam/google"
  version                 = "6.4.0"
  prefix                  = var.prefix
  project_id              = var.project_id
  project_roles           = var.project_roles
  service_account_address = var.service_account_address
}
