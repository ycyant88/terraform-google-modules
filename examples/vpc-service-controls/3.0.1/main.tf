module "vpc-service-controls" {
  source      = "terraform-google-modules/vpc-service-controls/google"
  version     = "3.0.1"
  parent_id   = var.parent_id
  policy_name = var.policy_name
}
