module "cloud-router" {
  source                  = "terraform-google-modules/cloud-router/google"
  version                 = "8.0.0"
  interconnect_attachment = var.interconnect_attachment
  ip_range                = var.ip_range
  name                    = var.name
  peers                   = var.peers
  project_id              = var.project_id
  region                  = var.region
  router                  = var.router
  vpn_tunnel              = var.vpn_tunnel
}
