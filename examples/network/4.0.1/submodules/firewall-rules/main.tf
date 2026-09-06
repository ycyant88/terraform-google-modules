module "network" {
  source       = "terraform-google-modules/network/google"
  version      = "4.0.1"
  network_name = var.network_name
  project_id   = var.project_id
  rules        = var.rules
}
