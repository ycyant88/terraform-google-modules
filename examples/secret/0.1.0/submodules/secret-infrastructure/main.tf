module "secret" {
  source                = "terraform-google-modules/secret/google"
  version               = "0.1.0"
  application_list      = var.application_list
  credentials_file_path = var.credentials_file_path
  env_list              = var.env_list
  project_name          = var.project_name
}
