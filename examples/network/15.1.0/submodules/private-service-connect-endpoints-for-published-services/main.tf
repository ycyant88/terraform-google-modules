module "network" {
  source                      = "terraform-google-modules/network/google"
  version                     = "15.1.0"
  address_name                = var.address_name
  forwarding_rule_name        = var.forwarding_rule_name
  ip_address                  = var.ip_address
  ip_version                  = var.ip_version
  network                     = var.network
  project_id                  = var.project_id
  psc_global_access           = var.psc_global_access
  region                      = var.region
  service_attachment          = var.service_attachment
  service_directory_namespace = var.service_directory_namespace
  subnetwork                  = var.subnetwork
}
