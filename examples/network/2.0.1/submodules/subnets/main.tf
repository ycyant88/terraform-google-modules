module "network" {
  source           = "terraform-google-modules/network/google"
  version          = "2.0.1"
  network_name     = var.network_name
  project_id       = var.project_id
  secondary_ranges = var.secondary_ranges
  subnets          = var.subnets
}
