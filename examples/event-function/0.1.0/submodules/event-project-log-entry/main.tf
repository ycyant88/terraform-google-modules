module "event-function" {
  source     = "terraform-google-modules/event-function/google"
  version    = "0.1.0"
  filter     = var.filter
  labels     = var.labels
  name       = var.name
  project_id = var.project_id
}
