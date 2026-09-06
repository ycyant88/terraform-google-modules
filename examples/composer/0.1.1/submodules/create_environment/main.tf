module "composer" {
  source                   = "terraform-google-modules/composer/google"
  version                  = "0.1.1"
  composer_env_name        = var.composer_env_name
  composer_service_account = var.composer_service_account
  ip_cidr_range            = var.ip_cidr_range
  machine_type             = var.machine_type
  network_name             = var.network_name
  node_count               = var.node_count
  project_id               = var.project_id
  region                   = var.region
  subnet_name              = var.subnet_name
  zone                     = var.zone
}
