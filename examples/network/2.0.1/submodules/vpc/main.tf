module "network" {
  source                  = "terraform-google-modules/network/google"
  version                 = "2.0.1"
  auto_create_subnetworks = var.auto_create_subnetworks
  description             = var.description
  network_name            = var.network_name
  project_id              = var.project_id
  routing_mode            = var.routing_mode
  shared_vpc_host         = var.shared_vpc_host
}
