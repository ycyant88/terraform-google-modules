module "forseti" {
  source            = "terraform-google-modules/forseti/google"
  version           = "5.0.2"
  client_gcs_module = var.client_gcs_module
  forseti_home      = var.forseti_home
  server_address    = var.server_address
}
