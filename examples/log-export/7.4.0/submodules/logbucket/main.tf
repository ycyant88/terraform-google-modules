module "log-export" {
  source         = "terraform-google-modules/log-export/google"
  version        = "7.4.0"
  location       = var.location
  name           = var.name
  project_id     = var.project_id
  retention_days = var.retention_days
}
