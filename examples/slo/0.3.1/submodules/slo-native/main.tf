module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "0.3.1"
  config  = var.config
}
