module "memorystore" {
  source             = "terraform-google-modules/memorystore/google"
  version            = "3.0.0"
  authorized_network = var.authorized_network
  cpu_count          = var.cpu_count
  display_name       = var.display_name
  enable_apis        = var.enable_apis
  labels             = var.labels
  memory_size_mb     = var.memory_size_mb
  name               = var.name
  node_count         = var.node_count
  params             = var.params
  project            = var.project
  region             = var.region
  reserved_ip_range  = var.reserved_ip_range
  zones              = var.zones
}
