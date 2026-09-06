module "sql-db" {
  source        = "terraform-google-modules/sql-db/google"
  version       = "15.0.0"
  address       = var.address
  description   = var.description
  ip_version    = var.ip_version
  labels        = var.labels
  prefix_length = var.prefix_length
  project_id    = var.project_id
  vpc_network   = var.vpc_network
}
