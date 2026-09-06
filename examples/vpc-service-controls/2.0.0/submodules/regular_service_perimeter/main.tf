module "vpc-service-controls" {
  source                      = "terraform-google-modules/vpc-service-controls/google"
  version                     = "2.0.0"
  access_levels               = var.access_levels
  access_levels_dry_run       = var.access_levels_dry_run
  description                 = var.description
  perimeter_name              = var.perimeter_name
  policy                      = var.policy
  resources                   = var.resources
  resources_dry_run           = var.resources_dry_run
  restricted_services         = var.restricted_services
  restricted_services_dry_run = var.restricted_services_dry_run
  shared_resources            = var.shared_resources
}
