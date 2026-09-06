module "bigquery" {
  source              = "terraform-google-modules/bigquery/google"
  version             = "6.1.1"
  deletion_protection = var.deletion_protection
  enable_apis         = var.enable_apis
  force_destroy       = var.force_destroy
  labels              = var.labels
  project_id          = var.project_id
  region              = var.region
}
