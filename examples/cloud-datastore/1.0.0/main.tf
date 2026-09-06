module "cloud-datastore" {
  source      = "terraform-google-modules/cloud-datastore/google"
  version     = "1.0.0"
  credentials = var.credentials
  indexes     = var.indexes
  project     = var.project
}
