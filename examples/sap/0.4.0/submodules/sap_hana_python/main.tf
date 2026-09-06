module "sap" {
  source        = "terraform-google-modules/sap/google"
  version       = "0.4.0"
  instance-type = var.instance-type
}
