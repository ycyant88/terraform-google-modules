module "utils" {
  source             = "terraform-google-modules/utils/google"
  version            = "0.8.0"
  additional_regions = var.additional_regions
  region             = var.region
}
