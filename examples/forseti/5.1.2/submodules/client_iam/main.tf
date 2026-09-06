module "forseti" {
  source     = "terraform-google-modules/forseti/google"
  version    = "5.1.2"
  project_id = var.project_id
  suffix     = var.suffix
}
