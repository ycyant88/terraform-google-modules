module "vpc-service-controls" {
  source      = "terraform-google-modules/vpc-service-controls/google"
  version     = "1.0.2"
  parent_id   = var.parent_id
  policy_name = var.policy_name
}
