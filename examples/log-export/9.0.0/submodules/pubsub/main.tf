module "log-export" {
  source                   = "terraform-google-modules/log-export/google"
  version                  = "9.0.0"
  create_push_subscriber   = var.create_push_subscriber
  create_subscriber        = var.create_subscriber
  kms_key_name             = var.kms_key_name
  log_sink_writer_identity = var.log_sink_writer_identity
  project_id               = var.project_id
  push_endpoint            = var.push_endpoint
  subscriber_id            = var.subscriber_id
  subscription_labels      = var.subscription_labels
  topic_labels             = var.topic_labels
  topic_name               = var.topic_name
}
