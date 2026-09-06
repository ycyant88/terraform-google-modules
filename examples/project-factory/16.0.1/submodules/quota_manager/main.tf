module "project-factory" {
  source          = "terraform-google-modules/project-factory/google"
  version         = "16.0.1"
  consumer_quotas = var.consumer_quotas
  project_id      = var.project_id
}
