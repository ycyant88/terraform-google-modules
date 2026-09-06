module "iam" {
  source                   = "terraform-google-modules/iam/google"
  version                  = "3.0.0"
  bindings                 = var.bindings
  bindings_num             = var.bindings_num
  mode                     = var.mode
  project                  = var.project
  pubsub_subscriptions     = var.pubsub_subscriptions
  pubsub_subscriptions_num = var.pubsub_subscriptions_num
}
