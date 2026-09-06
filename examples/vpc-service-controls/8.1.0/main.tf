module "vpc-service-controls" {
  source      = "terraform-google-modules/vpc-service-controls/google"
  version     = "8.1.0"
  parent_id   = var.parent_id
  policy_name = var.policy_name
  scopes      = var.scopes
}
