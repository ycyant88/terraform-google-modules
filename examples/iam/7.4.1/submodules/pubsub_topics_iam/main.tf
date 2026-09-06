module "iam" {
  source        = "terraform-google-modules/iam/google"
  version       = "7.4.1"
  bindings      = var.bindings
  mode          = var.mode
  project       = var.project
  pubsub_topics = var.pubsub_topics
}
