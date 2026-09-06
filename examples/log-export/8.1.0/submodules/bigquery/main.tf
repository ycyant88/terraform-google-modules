module "log-export" {
  source                     = "terraform-google-modules/log-export/google"
  version                    = "8.1.0"
  dataset_name               = var.dataset_name
  delete_contents_on_destroy = var.delete_contents_on_destroy
  description                = var.description
  expiration_days            = var.expiration_days
  kms_key_name               = var.kms_key_name
  labels                     = var.labels
  location                   = var.location
  log_sink_writer_identity   = var.log_sink_writer_identity
  partition_expiration_days  = var.partition_expiration_days
  project_id                 = var.project_id
}
