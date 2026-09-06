module "bootstrap" {
  source                = "terraform-google-modules/bootstrap/google"
  version               = "6.4.0"
  activate_apis         = var.activate_apis
  billing_account       = var.billing_account
  buckets_force_destroy = var.buckets_force_destroy
  cloud_source_repos    = var.cloud_source_repos
  folder_id             = var.folder_id
  group_org_admins      = var.group_org_admins
  location              = var.location
  org_id                = var.org_id
  project_id            = var.project_id
  project_labels        = var.project_labels
  storage_bucket_labels = var.storage_bucket_labels
}
