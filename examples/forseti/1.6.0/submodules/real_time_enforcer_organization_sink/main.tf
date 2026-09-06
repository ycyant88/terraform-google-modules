module "forseti" {
  source            = "terraform-google-modules/forseti/google"
  version           = "1.6.0"
  org_id            = var.org_id
  pubsub_project_id = var.pubsub_project_id
}
