module "cloud-router" {
  source            = "terraform-google-modules/cloud-router/google"
  version           = "0.2.0"
  admin_enabled     = var.admin_enabled
  bandwidth         = var.bandwidth
  candidate_subnets = var.candidate_subnets
  description       = var.description
  interconnect      = var.interconnect
  interface         = var.interface
  name              = var.name
  peer              = var.peer
  project           = var.project
  region            = var.region
  router            = var.router
  type              = var.type
  vlan_tag8021q     = var.vlan_tag8021q
}
