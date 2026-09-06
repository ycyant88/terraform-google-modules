module "iam" {
  source         = "terraform-google-modules/iam/google"
  version        = "4.0.0"
  bindings       = var.bindings
  mode           = var.mode
  project        = var.project
  subnets        = var.subnets
  subnets_region = var.subnets_region
}
