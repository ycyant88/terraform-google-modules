module "forseti" {
  source                  = "terraform-google-modules/forseti/google"
  version                 = "5.0.0"
  project_id              = var.project_id
  services                = var.services
  storage_bucket_location = var.storage_bucket_location
  suffix                  = var.suffix
}
