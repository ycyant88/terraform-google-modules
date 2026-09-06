module "startup-scripts" {
  source                       = "terraform-google-modules/startup-scripts/google"
  version                      = "2.0.0"
  enable_get_from_bucket       = var.enable_get_from_bucket
  enable_init_gsutil_crcmod_el = var.enable_init_gsutil_crcmod_el
  enable_setup_init_script     = var.enable_setup_init_script
  enable_setup_sudoers         = var.enable_setup_sudoers
}
