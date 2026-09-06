module "network" {
  source        = "terraform-google-modules/network/google"
  version       = "16.0.0"
  egress_rules  = var.egress_rules
  ingress_rules = var.ingress_rules
  network_name  = var.network_name
  project_id    = var.project_id
  rules         = var.rules
}
