module "iam" {
  source           = "terraform-google-modules/iam/google"
  version          = "7.4.1"
  audit_log_config = var.audit_log_config
  project          = var.project
}
