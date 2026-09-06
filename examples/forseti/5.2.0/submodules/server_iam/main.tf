module "forseti" {
  source                  = "terraform-google-modules/forseti/google"
  version                 = "5.2.0"
  cloud_profiler_enabled  = var.cloud_profiler_enabled
  cscc_violations_enabled = var.cscc_violations_enabled
  enable_write            = var.enable_write
  folder_id               = var.folder_id
  org_id                  = var.org_id
  project_id              = var.project_id
  server_service_account  = var.server_service_account
  suffix                  = var.suffix
}
