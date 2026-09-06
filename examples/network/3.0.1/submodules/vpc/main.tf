module "network" {
  source                                 = "terraform-google-modules/network/google"
  version                                = "3.0.1"
  auto_create_subnetworks                = var.auto_create_subnetworks
  delete_default_internet_gateway_routes = var.delete_default_internet_gateway_routes
  description                            = var.description
  mtu                                    = var.mtu
  network_name                           = var.network_name
  project_id                             = var.project_id
  routing_mode                           = var.routing_mode
  shared_vpc_host                        = var.shared_vpc_host
}
