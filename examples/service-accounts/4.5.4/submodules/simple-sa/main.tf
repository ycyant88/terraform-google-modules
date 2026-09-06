module "service-accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "4.5.4"
  description   = var.description
  display_name  = var.display_name
  name          = var.name
  project_id    = var.project_id
  project_roles = var.project_roles
}
