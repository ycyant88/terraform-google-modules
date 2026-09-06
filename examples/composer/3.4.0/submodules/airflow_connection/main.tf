module "composer" {
  source            = "terraform-google-modules/composer/google"
  version           = "3.4.0"
  composer_env_name = var.composer_env_name
  extra             = var.extra
  host              = var.host
  id                = var.id
  login             = var.login
  password          = var.password
  port              = var.port
  project_id        = var.project_id
  region            = var.region
  schema            = var.schema
  type              = var.type
  uri               = var.uri
}
