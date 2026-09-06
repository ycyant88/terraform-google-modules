module "forseti" {
  source            = "terraform-google-modules/forseti/google"
  version           = "5.0.3"
  pubsub_project_id = var.pubsub_project_id
  sink_project_id   = var.sink_project_id
}
