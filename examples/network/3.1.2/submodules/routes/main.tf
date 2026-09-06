module "network" {
  source            = "terraform-google-modules/network/google"
  version           = "3.1.2"
  module_depends_on = var.module_depends_on
  network_name      = var.network_name
  project_id        = var.project_id
  routes            = var.routes
}
