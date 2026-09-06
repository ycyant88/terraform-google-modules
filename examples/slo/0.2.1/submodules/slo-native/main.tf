module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "0.2.1"
  config  = var.config
}
