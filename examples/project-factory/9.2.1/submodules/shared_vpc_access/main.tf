module "project-factory" {
  source                             = "terraform-google-modules/project-factory/google"
  version                            = "9.2.1"
  active_apis                        = var.active_apis
  grant_services_security_admin_role = var.grant_services_security_admin_role
  host_project_id                    = var.host_project_id
  service_project_id                 = var.service_project_id
  shared_vpc_subnets                 = var.shared_vpc_subnets
}
