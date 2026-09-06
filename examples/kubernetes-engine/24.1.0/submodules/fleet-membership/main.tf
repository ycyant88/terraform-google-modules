module "kubernetes-engine" {
  source                    = "terraform-google-modules/kubernetes-engine/google"
  version                   = "24.1.0"
  cluster_name              = var.cluster_name
  enable_fleet_registration = var.enable_fleet_registration
  hub_project_id            = var.hub_project_id
  location                  = var.location
  membership_name           = var.membership_name
  project_id                = var.project_id
}
