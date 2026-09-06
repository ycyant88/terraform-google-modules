module "iam" {
  source           = "terraform-google-modules/iam/google"
  version          = "6.3.1"
  audit_log_config = var.audit_log_config
  project          = var.project
}
