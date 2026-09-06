module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "4.0.1"
  bucket_policy_only       = var.bucket_policy_only
  location                 = var.location
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
  storage_bucket_name      = var.storage_bucket_name
  storage_class            = var.storage_class
}
