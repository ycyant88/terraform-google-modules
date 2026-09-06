module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "3.0.0"
  config  = var.config
}
