module "data-fusion" {
  source           = "terraform-google-modules/data-fusion/google"
  version          = "4.0.0"
  artifact_version = var.artifact_version
  bucket           = var.bucket
  name             = var.name
  namespace        = var.namespace
  package          = var.package
  package_version  = var.package_version
}
