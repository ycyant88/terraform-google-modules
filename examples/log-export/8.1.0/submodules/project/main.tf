module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "8.1.0"
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
}
