module "iam" {
  source       = "terraform-google-modules/iam/google"
  version      = "3.0.0"
  bindings     = var.bindings
  bindings_num = var.bindings_num
  folders      = var.folders
  folders_num  = var.folders_num
  mode         = var.mode
}
