module "log-export" {
  source                      = "terraform-google-modules/log-export/google"
  version                     = "3.2.0"
  dataset_name                = var.dataset_name
  default_table_expiration_ms = var.default_table_expiration_ms
  delete_contents_on_destroy  = var.delete_contents_on_destroy
  description                 = var.description
  labels                      = var.labels
  location                    = var.location
  log_sink_writer_identity    = var.log_sink_writer_identity
  project_id                  = var.project_id
}
