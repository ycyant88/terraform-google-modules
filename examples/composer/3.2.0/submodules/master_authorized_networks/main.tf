module "composer" {
  source                     = "terraform-google-modules/composer/google"
  version                    = "3.2.0"
  gke_cluster                = var.gke_cluster
  master_authorized_networks = var.master_authorized_networks
  project_id                 = var.project_id
  zone                       = var.zone
}
