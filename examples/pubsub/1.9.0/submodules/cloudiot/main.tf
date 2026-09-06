module "pubsub" {
  source                    = "terraform-google-modules/pubsub/google"
  version                   = "1.9.0"
  event_notification_config = var.event_notification_config
  http_enabled_state        = var.http_enabled_state
  mqtt_enabled_state        = var.mqtt_enabled_state
  name                      = var.name
  project_id                = var.project_id
  public_key_certificates   = var.public_key_certificates
  region                    = var.region
  state_notification_config = var.state_notification_config
}
