module "sap" {
  source        = "terraform-google-modules/sap/google"
  version       = "0.3.0"
  instance-type = var.instance-type
}
