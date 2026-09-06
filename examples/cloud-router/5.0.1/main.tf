module "cloud-router" {
  source      = "terraform-google-modules/cloud-router/google"
  version     = "5.0.1"
  bgp         = var.bgp
  description = var.description
  name        = var.name
  nats        = var.nats
  network     = var.network
  project     = var.project
  region      = var.region
}
