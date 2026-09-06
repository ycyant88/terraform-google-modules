module "kubernetes-engine" {
  source           = "terraform-google-modules/kubernetes-engine/google"
  version          = "33.0.2"
  fleet_project_id = var.fleet_project_id
  groups           = var.groups
  role             = var.role
  scope_id         = var.scope_id
  users            = var.users
}
