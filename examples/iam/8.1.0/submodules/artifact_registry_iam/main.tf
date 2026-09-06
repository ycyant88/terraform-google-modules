module "iam" {
  source       = "terraform-google-modules/iam/google"
  version      = "8.1.0"
  bindings     = var.bindings
  location     = var.location
  mode         = var.mode
  project      = var.project
  repositories = var.repositories
}
