module "composer" {
  source           = "terraform-google-modules/composer/google"
  version          = "5.2.0"
  destination_path = var.destination_path
  environment      = var.environment
  location         = var.location
  project_id       = var.project_id
  source_path      = var.source_path
  type             = var.type
}
