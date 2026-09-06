module "bigquery" {
  source              = "terraform-google-modules/bigquery/google"
  version             = "9.0.0"
  authorized_datasets = var.authorized_datasets
  authorized_routines = var.authorized_routines
  authorized_views    = var.authorized_views
  dataset_id          = var.dataset_id
  project_id          = var.project_id
  roles               = var.roles
}
