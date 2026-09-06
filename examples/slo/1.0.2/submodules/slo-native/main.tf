module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "1.0.2"
  config  = var.config
}
