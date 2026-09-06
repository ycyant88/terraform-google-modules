module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "0.3.0"
  config  = var.config
}
