module "network" {
  source                  = "terraform-google-modules/network/google"
  version                 = "1.4.1"
  admin_ranges            = var.admin_ranges
  admin_ranges_enabled    = var.admin_ranges_enabled
  custom_rules            = var.custom_rules
  http_source_ranges      = var.http_source_ranges
  https_source_ranges     = var.https_source_ranges
  internal_allow          = var.internal_allow
  internal_ranges         = var.internal_ranges
  internal_ranges_enabled = var.internal_ranges_enabled
  network                 = var.network
  project_id              = var.project_id
  ssh_source_ranges       = var.ssh_source_ranges
}
