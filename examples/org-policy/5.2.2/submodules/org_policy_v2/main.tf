module "org-policy" {
  source           = "terraform-google-modules/org-policy/google"
  version          = "5.2.2"
  constraint       = var.constraint
  exclude_folders  = var.exclude_folders
  exclude_projects = var.exclude_projects
  policy_root      = var.policy_root
  policy_root_id   = var.policy_root_id
  policy_type      = var.policy_type
  rules            = var.rules
}
