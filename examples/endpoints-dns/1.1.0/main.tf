module "endpoints-dns" {
  source          = "terraform-google-modules/endpoints-dns/google"
  version         = "1.1.0"
  ensure_undelete = var.ensure_undelete
  external_ip     = var.external_ip
  name            = var.name
  project         = var.project
}
