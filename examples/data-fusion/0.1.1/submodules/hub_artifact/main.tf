module "data-fusion" {
  source           = "terraform-google-modules/data-fusion/google"
  version          = "0.1.1"
  artifact_version = var.artifact_version
  bucket           = var.bucket
  name             = var.name
  namespace        = var.namespace
  package          = var.package
  package_version  = var.package_version
}
