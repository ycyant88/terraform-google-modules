module "network" {
  source           = "terraform-google-modules/network/google"
  version          = "16.1.0"
  network_name     = var.network_name
  project_id       = var.project_id
  secondary_ranges = var.secondary_ranges
  subnets          = var.subnets
  subnets_region   = var.subnets_region
}
