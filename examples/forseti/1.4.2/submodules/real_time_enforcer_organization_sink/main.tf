module "forseti" {
  source            = "terraform-google-modules/forseti/google"
  version           = "1.4.2"
  org_id            = var.org_id
  pubsub_project_id = var.pubsub_project_id
}
