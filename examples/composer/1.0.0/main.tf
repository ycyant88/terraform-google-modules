module "composer" {
  source            = "terraform-google-modules/composer/google"
  version           = "1.0.0"
  composer_env_name = var.composer_env_name
  network           = var.network
  project_id        = var.project_id
  region            = var.region
  subnetwork        = var.subnetwork
}
