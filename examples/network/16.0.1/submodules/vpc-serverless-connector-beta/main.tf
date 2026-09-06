module "network" {
  source         = "terraform-google-modules/network/google"
  version        = "16.0.1"
  project_id     = var.project_id
  vpc_connectors = var.vpc_connectors
}
