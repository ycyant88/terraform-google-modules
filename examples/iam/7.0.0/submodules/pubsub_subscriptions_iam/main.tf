module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "7.0.0"
  bindings             = var.bindings
  mode                 = var.mode
  project              = var.project
  pubsub_subscriptions = var.pubsub_subscriptions
}
