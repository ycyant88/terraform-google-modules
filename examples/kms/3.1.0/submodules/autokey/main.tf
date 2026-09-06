module "kms" {
  source                = "terraform-google-modules/kms/google"
  version               = "3.1.0"
  autokey_folder_number = var.autokey_folder_number
  autokey_handles       = var.autokey_handles
  project_id            = var.project_id
}
