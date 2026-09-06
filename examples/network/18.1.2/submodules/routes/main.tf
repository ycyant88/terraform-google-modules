module "network" {
  source                 = "terraform-google-modules/network/google"
  version                = "18.1.2"
  common_next_hop_config = var.common_next_hop_config
  module_depends_on      = var.module_depends_on
  network_name           = var.network_name
  project_id             = var.project_id
  routes                 = var.routes
}
