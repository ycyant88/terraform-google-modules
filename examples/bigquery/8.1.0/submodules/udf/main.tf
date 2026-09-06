module "bigquery" {
  source     = "terraform-google-modules/bigquery/google"
  version    = "8.1.0"
  add_udfs   = var.add_udfs
  dataset_id = var.dataset_id
  project_id = var.project_id
}
