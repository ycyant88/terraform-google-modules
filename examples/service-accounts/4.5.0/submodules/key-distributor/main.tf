module "service-accounts" {
  source           = "terraform-google-modules/service-accounts/google"
  version          = "4.5.0"
  folder_ids       = var.folder_ids
  function_members = var.function_members
  function_name    = var.function_name
  org_id           = var.org_id
  project_id       = var.project_id
  project_ids      = var.project_ids
  public_key_file  = var.public_key_file
  region           = var.region
}
