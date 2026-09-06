module "memorystore" {
  source                      = "terraform-google-modules/memorystore/google"
  version                     = "8.0.0"
  authorization_mode          = var.authorization_mode
  enable_apis                 = var.enable_apis
  name                        = var.name
  network                     = var.network
  project                     = var.project
  region                      = var.region
  replica_count               = var.replica_count
  service_connection_policies = var.service_connection_policies
  shard_count                 = var.shard_count
  transit_encryption_mode     = var.transit_encryption_mode
}
