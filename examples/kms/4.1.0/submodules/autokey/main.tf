module "kms" {
  source                = "terraform-google-modules/kms/google"
  version               = "4.1.0"
  autokey_folder_number = var.autokey_folder_number
  key_project_id        = var.key_project_id
}
