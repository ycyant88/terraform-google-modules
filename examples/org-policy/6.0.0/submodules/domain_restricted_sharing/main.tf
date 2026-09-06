module "org-policy" {
  source           = "terraform-google-modules/org-policy/google"
  version          = "6.0.0"
  domains_to_allow = var.domains_to_allow
  exclude_folders  = var.exclude_folders
  exclude_projects = var.exclude_projects
  folder_id        = var.folder_id
  organization_id  = var.organization_id
  policy_for       = var.policy_for
  project_id       = var.project_id
}
