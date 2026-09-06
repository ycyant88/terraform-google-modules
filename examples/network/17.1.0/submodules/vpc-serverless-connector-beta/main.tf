module "network" {
  source         = "terraform-google-modules/network/google"
  version        = "17.1.0"
  project_id     = var.project_id
  vpc_connectors = var.vpc_connectors
}
