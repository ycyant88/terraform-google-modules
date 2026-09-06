module "cloud-router" {
  source                  = "terraform-google-modules/cloud-router/google"
  version                 = "1.3.0"
  interconnect_attachment = var.interconnect_attachment
  ip_range                = var.ip_range
  name                    = var.name
  peers                   = var.peers
  project                 = var.project
  region                  = var.region
  router                  = var.router
  vpn_tunnel              = var.vpn_tunnel
}
