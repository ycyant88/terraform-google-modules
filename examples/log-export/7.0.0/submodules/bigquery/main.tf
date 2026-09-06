module "log-export" {
  source                     = "terraform-google-modules/log-export/google"
  version                    = "7.0.0"
  dataset_name               = var.dataset_name
  delete_contents_on_destroy = var.delete_contents_on_destroy
  description                = var.description
  expiration_days            = var.expiration_days
  labels                     = var.labels
  location                   = var.location
  log_sink_writer_identity   = var.log_sink_writer_identity
  project_id                 = var.project_id
}
