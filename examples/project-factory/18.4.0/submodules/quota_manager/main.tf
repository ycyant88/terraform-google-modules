module "project-factory" {
  source          = "terraform-google-modules/project-factory/google"
  version         = "18.4.0"
  consumer_quotas = var.consumer_quotas
  project_id      = var.project_id
}
