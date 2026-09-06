module "network" {
  source            = "terraform-google-modules/network/google"
  version           = "7.0.0"
  module_depends_on = var.module_depends_on
  network_name      = var.network_name
  project_id        = var.project_id
  secondary_ranges  = var.secondary_ranges
  subnets           = var.subnets
}
