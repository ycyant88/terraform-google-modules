module "iam" {
  source       = "terraform-google-modules/iam/google"
  version      = "3.0.0"
  bindings     = var.bindings
  bindings_num = var.bindings_num
  mode         = var.mode
  project      = var.project
  projects     = var.projects
  projects_num = var.projects_num
}
