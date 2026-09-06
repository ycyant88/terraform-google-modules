module "iam" {
  source           = "terraform-google-modules/iam/google"
  version          = "8.1.0"
  audit_log_config = var.audit_log_config
  project          = var.project
}
