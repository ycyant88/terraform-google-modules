module "slo" {
  source  = "terraform-google-modules/slo/google"
  version = "0.2.2"
  config  = var.config
}
