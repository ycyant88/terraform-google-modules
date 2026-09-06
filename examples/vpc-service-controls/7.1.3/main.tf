module "vpc-service-controls" {
  source      = "terraform-google-modules/vpc-service-controls/google"
  version     = "7.1.3"
  parent_id   = var.parent_id
  policy_name = var.policy_name
  scopes      = var.scopes
}
