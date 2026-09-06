module "vpc-service-controls" {
  source              = "terraform-google-modules/vpc-service-controls/google"
  version             = "1.0.0"
  access_levels       = var.access_levels
  description         = var.description
  perimeter_name      = var.perimeter_name
  policy              = var.policy
  resources           = var.resources
  restricted_services = var.restricted_services
  shared_resources    = var.shared_resources
}
