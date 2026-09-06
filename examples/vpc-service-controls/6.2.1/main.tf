module "vpc-service-controls" {
  source      = "terraform-google-modules/vpc-service-controls/google"
  version     = "6.2.1"
  parent_id   = var.parent_id
  policy_name = var.policy_name
}
