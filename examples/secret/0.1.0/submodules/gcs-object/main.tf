module "secret" {
  source   = "terraform-google-modules/secret/google"
  version  = "0.1.0"
  bucket   = var.bucket
  duration = var.duration
  path     = var.path
}
