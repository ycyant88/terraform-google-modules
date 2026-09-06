module "network" {
  source         = "terraform-google-modules/network/google"
  version        = "16.1.0"
  description    = var.description
  parent_node    = var.parent_node
  policy_name    = var.policy_name
  rules          = var.rules
  target_folders = var.target_folders
  target_org     = var.target_org
}
