module "network" {
  source       = "terraform-google-modules/network/google"
  version      = "3.1.1"
  network_name = var.network_name
  project_id   = var.project_id
  rules        = var.rules
}
