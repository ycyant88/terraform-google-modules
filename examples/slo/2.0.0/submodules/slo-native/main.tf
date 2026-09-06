module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "2.0.0"
  config  = var.config
}
