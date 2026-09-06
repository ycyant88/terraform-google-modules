module "network" {
  source        = "terraform-google-modules/network/google"
  version       = "7.3.0"
  description   = var.description
  policy_name   = var.policy_name
  policy_region = var.policy_region
  project_id    = var.project_id
  rules         = var.rules
  target_vpcs   = var.target_vpcs
}
