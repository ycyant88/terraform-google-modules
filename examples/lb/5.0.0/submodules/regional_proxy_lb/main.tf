module "lb" {
  source                   = "terraform-google-modules/lb/google"
  version                  = "5.0.0"
  address                  = var.address
  backend                  = var.backend
  create_firewall_rules    = var.create_firewall_rules
  create_proxy_only_subnet = var.create_proxy_only_subnet
  health_check             = var.health_check
  name                     = var.name
  network                  = var.network
  network_project          = var.network_project
  port_front_end           = var.port_front_end
  project                  = var.project
  proxy_header             = var.proxy_header
  proxy_only_subnet_cidr   = var.proxy_only_subnet_cidr
  region                   = var.region
  target_tags              = var.target_tags
}
