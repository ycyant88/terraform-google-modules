module "event-function" {
  source           = "terraform-google-modules/event-function/google"
  version          = "4.0.0"
  filter           = var.filter
  folder_id        = var.folder_id
  include_children = var.include_children
  labels           = var.labels
  name             = var.name
  project_id       = var.project_id
}
