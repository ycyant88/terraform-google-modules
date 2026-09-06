module "sql-db" {
  source          = "terraform-google-modules/sql-db/google"
  version         = "26.1.1"
  address         = var.address
  deletion_policy = var.deletion_policy
  description     = var.description
  ip_version      = var.ip_version
  labels          = var.labels
  prefix_length   = var.prefix_length
  project_id      = var.project_id
  vpc_network     = var.vpc_network
}
