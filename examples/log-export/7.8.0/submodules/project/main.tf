module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "7.8.0"
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
}
