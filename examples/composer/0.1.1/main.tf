module "composer" {
  source            = "terraform-google-modules/composer/google"
  version           = "0.1.1"
  composer_env_name = var.composer_env_name
  composer_sa       = var.composer_sa
  project_id        = var.project_id
  region            = var.region
}
