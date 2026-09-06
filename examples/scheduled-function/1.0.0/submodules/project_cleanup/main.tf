module "scheduled-function" {
  source                   = "terraform-google-modules/scheduled-function/google"
  version                  = "1.0.0"
  max_project_age_in_hours = var.max_project_age_in_hours
  organization_id          = var.organization_id
  project_id               = var.project_id
  region                   = var.region
  target_tag_name          = var.target_tag_name
  target_tag_value         = var.target_tag_value
}
