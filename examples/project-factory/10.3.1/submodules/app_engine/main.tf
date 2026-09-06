module "project-factory" {
  source           = "terraform-google-modules/project-factory/google"
  version          = "10.3.1"
  auth_domain      = var.auth_domain
  feature_settings = var.feature_settings
  location_id      = var.location_id
  project_id       = var.project_id
  serving_status   = var.serving_status
}
