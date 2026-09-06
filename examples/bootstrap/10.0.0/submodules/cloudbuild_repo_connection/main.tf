module "bootstrap" {
  source                     = "terraform-google-modules/bootstrap/google"
  version                    = "10.0.0"
  cloud_build_repositories   = var.cloud_build_repositories
  cloudbuild_connection_name = var.cloudbuild_connection_name
  connection_config          = var.connection_config
  location                   = var.location
  project_id                 = var.project_id
}
