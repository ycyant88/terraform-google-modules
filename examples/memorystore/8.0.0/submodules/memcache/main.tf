module "memorystore" {
  source             = "terraform-google-modules/memorystore/google"
  version            = "8.0.0"
  authorized_network = var.authorized_network
  cpu_count          = var.cpu_count
  display_name       = var.display_name
  enable_apis        = var.enable_apis
  labels             = var.labels
  maintenance_policy = var.maintenance_policy
  memcache_version   = var.memcache_version
  memory_size_mb     = var.memory_size_mb
  name               = var.name
  node_count         = var.node_count
  params             = var.params
  project            = var.project
  region             = var.region
  zones              = var.zones
}
