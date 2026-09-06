module "sap" {
  source        = "terraform-google-modules/sap/google"
  version       = "0.1.0"
  instance-type = var.instance-type
}
