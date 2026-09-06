module "iam" {
  source            = "terraform-google-modules/iam/google"
  version           = "3.0.0"
  bindings          = var.bindings
  bindings_num      = var.bindings_num
  mode              = var.mode
  project           = var.project
  pubsub_topics     = var.pubsub_topics
  pubsub_topics_num = var.pubsub_topics_num
}
