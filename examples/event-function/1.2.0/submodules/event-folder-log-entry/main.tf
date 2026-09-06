module "event-function" {
  source     = "terraform-google-modules/event-function/google"
  version    = "1.2.0"
  filter     = var.filter
  folder_id  = var.folder_id
  labels     = var.labels
  name       = var.name
  project_id = var.project_id
}
