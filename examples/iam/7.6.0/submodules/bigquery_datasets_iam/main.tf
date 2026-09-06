module "iam" {
  source            = "terraform-google-modules/iam/google"
  version           = "7.6.0"
  bigquery_datasets = var.bigquery_datasets
  bindings          = var.bindings
  mode              = var.mode
  project           = var.project
}
