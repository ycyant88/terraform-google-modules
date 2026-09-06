module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "4.0.1"
  create_push_subscriber   = var.create_push_subscriber
  create_subscriber        = var.create_subscriber
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
  push_endpoint            = var.push_endpoint
  topic_labels             = var.topic_labels
  topic_name               = var.topic_name
}
