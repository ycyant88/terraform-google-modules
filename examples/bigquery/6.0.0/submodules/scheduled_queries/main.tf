module "bigquery" {
  source     = "terraform-google-modules/bigquery/google"
  version    = "6.0.0"
  project_id = var.project_id
  queries    = var.queries
}
