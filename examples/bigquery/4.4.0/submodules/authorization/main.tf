module "bigquery" {
  source           = "terraform-google-modules/bigquery/google"
  version          = "4.4.0"
  authorized_views = var.authorized_views
  dataset_id       = var.dataset_id
  project_id       = var.project_id
  roles            = var.roles
}
