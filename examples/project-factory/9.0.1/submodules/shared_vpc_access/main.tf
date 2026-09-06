module "project-factory" {
  source             = "terraform-google-modules/project-factory/google"
  version            = "9.0.1"
  active_apis        = var.active_apis
  host_project_id    = var.host_project_id
  service_project_id = var.service_project_id
  shared_vpc_subnets = var.shared_vpc_subnets
}
