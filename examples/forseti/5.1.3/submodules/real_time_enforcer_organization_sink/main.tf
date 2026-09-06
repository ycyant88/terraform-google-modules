module "forseti" {
  source            = "terraform-google-modules/forseti/google"
  version           = "5.1.3"
  org_id            = var.org_id
  pubsub_project_id = var.pubsub_project_id
}
