module "org-policy" {
  source           = "terraform-google-modules/org-policy/google"
  version          = "7.3.0"
  exclude_folders  = var.exclude_folders
  exclude_projects = var.exclude_projects
  folder_id        = var.folder_id
  organization_id  = var.organization_id
  policy_for       = var.policy_for
  project_id       = var.project_id
  vms_to_allow     = var.vms_to_allow
}
