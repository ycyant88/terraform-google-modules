module "bigquery" {
  source     = "terraform-google-modules/bigquery/google"
  version    = "8.1.0"
  project_id = var.project_id
  queries    = var.queries
}
