module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "2.0.0"
  create_subscriber        = var.create_subscriber
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
  topic_name               = var.topic_name
}
