module "network" {
  source        = "terraform-google-modules/network/google"
  version       = "18.1.1"
  address_name  = var.address_name
  network_id    = var.network_id
  prefix_length = var.prefix_length
  project_id    = var.project_id
}
