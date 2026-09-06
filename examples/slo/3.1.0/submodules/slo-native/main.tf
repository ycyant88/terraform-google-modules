module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "3.1.0"
  config  = var.config
}
