module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "1.0.0"
  config  = var.config
}
