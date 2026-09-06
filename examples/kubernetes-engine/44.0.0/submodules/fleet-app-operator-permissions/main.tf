module "kubernetes-engine" {
  source           = "terraform-google-modules/kubernetes-engine/google"
  version          = "44.0.0"
  custom_role      = var.custom_role
  fleet_project_id = var.fleet_project_id
  groups           = var.groups
  role             = var.role
  scope_id         = var.scope_id
  users            = var.users
}
