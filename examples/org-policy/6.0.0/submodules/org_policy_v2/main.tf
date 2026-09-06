module "org-policy" {
  source              = "terraform-google-modules/org-policy/google"
  version             = "6.0.0"
  constraint          = var.constraint
  exclude_folders     = var.exclude_folders
  exclude_projects    = var.exclude_projects
  inherit_from_parent = var.inherit_from_parent
  policy_root         = var.policy_root
  policy_root_id      = var.policy_root_id
  policy_type         = var.policy_type
  rules               = var.rules
}
