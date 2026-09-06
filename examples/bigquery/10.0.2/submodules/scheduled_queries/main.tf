module "bigquery" {
  source     = "terraform-google-modules/bigquery/google"
  version    = "10.0.2"
  project_id = var.project_id
  queries    = var.queries
}
