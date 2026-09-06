module "bigquery" {
  source     = "terraform-google-modules/bigquery/google"
  version    = "5.4.1"
  project_id = var.project_id
  queries    = var.queries
}
