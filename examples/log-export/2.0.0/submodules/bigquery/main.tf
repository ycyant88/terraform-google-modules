module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "2.0.0"
  dataset_name             = var.dataset_name
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
}
