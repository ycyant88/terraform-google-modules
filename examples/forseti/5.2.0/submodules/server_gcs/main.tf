module "forseti" {
  source                   = "terraform-google-modules/forseti/google"
  version                  = "5.2.0"
  bucket_cai_lifecycle_age = var.bucket_cai_lifecycle_age
  bucket_cai_location      = var.bucket_cai_location
  enable_cai_bucket        = var.enable_cai_bucket
  project_id               = var.project_id
  services                 = var.services
  storage_bucket_location  = var.storage_bucket_location
  suffix                   = var.suffix
}
