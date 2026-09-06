module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "2.1.0"
  config  = var.config
}
