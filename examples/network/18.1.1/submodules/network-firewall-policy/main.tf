module "network" {
  source        = "terraform-google-modules/network/google"
  version       = "18.1.1"
  description   = var.description
  policy_name   = var.policy_name
  policy_region = var.policy_region
  policy_type   = var.policy_type
  project_id    = var.project_id
  rules         = var.rules
  target_vpcs   = var.target_vpcs
}
