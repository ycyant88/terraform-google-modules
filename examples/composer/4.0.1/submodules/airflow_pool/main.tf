module "composer" {
  source            = "terraform-google-modules/composer/google"
  version           = "4.0.1"
  composer_env_name = var.composer_env_name
  description       = var.description
  pool_name         = var.pool_name
  project_id        = var.project_id
  region            = var.region
  slot_count        = var.slot_count
}
