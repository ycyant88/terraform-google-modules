module "vpc-service-controls" {
  source         = "terraform-google-modules/vpc-service-controls/google"
  version        = "2.1.0"
  description    = var.description
  perimeter_name = var.perimeter_name
  policy         = var.policy
  resources      = var.resources
}
