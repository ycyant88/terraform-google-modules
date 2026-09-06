module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "1.0.1"
  config  = var.config
}
