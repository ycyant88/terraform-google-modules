module "forseti" {
  source                     = "terraform-google-modules/forseti/google"
  version                    = "5.1.0"
  cloudsql_db_name           = var.cloudsql_db_name
  cloudsql_disk_size         = var.cloudsql_disk_size
  cloudsql_net_write_timeout = var.cloudsql_net_write_timeout
  cloudsql_private           = var.cloudsql_private
  cloudsql_region            = var.cloudsql_region
  cloudsql_type              = var.cloudsql_type
  cloudsql_user_host         = var.cloudsql_user_host
  network                    = var.network
  network_project            = var.network_project
  project_id                 = var.project_id
  services                   = var.services
  suffix                     = var.suffix
}
