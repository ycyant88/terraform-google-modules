module "utils" {
  source             = "terraform-google-modules/utils/google"
  version            = "0.7.1"
  additional_regions = var.additional_regions
  region             = var.region
}
