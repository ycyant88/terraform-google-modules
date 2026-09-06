module "network" {
  source                                 = "terraform-google-modules/network/google"
  version                                = "2.2.0"
  delete_default_internet_gateway_routes = var.delete_default_internet_gateway_routes
  module_depends_on                      = var.module_depends_on
  network_name                           = var.network_name
  project_id                             = var.project_id
  routes                                 = var.routes
}
