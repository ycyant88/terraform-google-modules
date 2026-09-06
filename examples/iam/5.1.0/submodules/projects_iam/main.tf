module "iam" {
  source   = "terraform-google-modules/iam/google"
  version  = "5.1.0"
  bindings = var.bindings
  mode     = var.mode
  project  = var.project
  projects = var.projects
}
