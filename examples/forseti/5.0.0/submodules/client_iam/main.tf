module "forseti" {
  source     = "terraform-google-modules/forseti/google"
  version    = "5.0.0"
  project_id = var.project_id
  suffix     = var.suffix
}
