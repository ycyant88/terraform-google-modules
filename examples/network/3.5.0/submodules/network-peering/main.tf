module "network" {
  source                                    = "terraform-google-modules/network/google"
  version                                   = "3.5.0"
  export_local_custom_routes                = var.export_local_custom_routes
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
  export_peer_custom_routes                 = var.export_peer_custom_routes
  export_peer_subnet_routes_with_public_ip  = var.export_peer_subnet_routes_with_public_ip
  local_network                             = var.local_network
  module_depends_on                         = var.module_depends_on
  peer_network                              = var.peer_network
  prefix                                    = var.prefix
}
