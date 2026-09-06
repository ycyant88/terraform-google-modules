module "project-factory" {
  source                      = "terraform-google-modules/project-factory/google"
  version                     = "17.0.0"
  activate_api_identities     = var.activate_api_identities
  activate_apis               = var.activate_apis
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  enable_apis                 = var.enable_apis
  project_id                  = var.project_id
}
