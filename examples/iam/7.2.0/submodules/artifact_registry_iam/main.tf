module "iam" {
  source       = "terraform-google-modules/iam/google"
  version      = "7.2.0"
  bindings     = var.bindings
  location     = var.location
  mode         = var.mode
  project      = var.project
  repositories = var.repositories
}
