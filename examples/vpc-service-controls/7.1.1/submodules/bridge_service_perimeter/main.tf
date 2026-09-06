module "vpc-service-controls" {
  source         = "terraform-google-modules/vpc-service-controls/google"
  version        = "7.1.1"
  description    = var.description
  perimeter_name = var.perimeter_name
  policy         = var.policy
  resource_keys  = var.resource_keys
  resources      = var.resources
}
