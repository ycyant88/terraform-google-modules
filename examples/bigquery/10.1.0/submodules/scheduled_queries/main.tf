module "bigquery" {
  source     = "terraform-google-modules/bigquery/google"
  version    = "10.1.0"
  project_id = var.project_id
  queries    = var.queries
}
