module "cloud-datastore" {
  source  = "terraform-google-modules/cloud-datastore/google"
  version = "2.0.0"
  indexes = var.indexes
  project = var.project
}
