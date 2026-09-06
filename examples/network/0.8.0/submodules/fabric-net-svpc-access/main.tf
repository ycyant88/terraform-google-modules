module "network" {
  source              = "terraform-google-modules/network/google"
  version             = "0.8.0"
  host_project_id     = var.host_project_id
  host_subnet_regions = var.host_subnet_regions
  host_subnet_users   = var.host_subnet_users
  host_subnets        = var.host_subnets
  service_project_ids = var.service_project_ids
  service_project_num = var.service_project_num
}
