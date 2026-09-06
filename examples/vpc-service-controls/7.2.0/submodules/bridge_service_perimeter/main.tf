module "vpc-service-controls" {
  source         = "terraform-google-modules/vpc-service-controls/google"
  version        = "7.2.0"
  description    = var.description
  perimeter_name = var.perimeter_name
  policy         = var.policy
  resource_keys  = var.resource_keys
  resources      = var.resources
}
