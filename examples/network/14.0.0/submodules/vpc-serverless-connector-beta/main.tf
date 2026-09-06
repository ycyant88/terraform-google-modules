module "network" {
  source         = "terraform-google-modules/network/google"
  version        = "14.0.0"
  project_id     = var.project_id
  vpc_connectors = var.vpc_connectors
}
