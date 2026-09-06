module "event-function" {
  source               = "terraform-google-modules/event-function/google"
  version              = "4.0.0"
  filter               = var.filter
  labels               = var.labels
  name                 = var.name
  parent_resource_type = var.parent_resource_type
  project_id           = var.project_id
}
