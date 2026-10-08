module "network" {
  source         = "terraform-google-modules/network/google"
  version        = "18.3.1"
  project_id     = var.project_id
  vpc_connectors = var.vpc_connectors
}
