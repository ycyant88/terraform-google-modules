module "data-fusion" {
  source           = "terraform-google-modules/data-fusion/google"
  version          = "0.1.1"
  access_token     = var.access_token
  service_endpoint = var.service_endpoint
}
