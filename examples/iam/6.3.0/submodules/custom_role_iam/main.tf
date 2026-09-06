module "iam" {
  source       = "terraform-google-modules/iam/google"
  version      = "6.3.0"
  description  = var.description
  members      = var.members
  permissions  = var.permissions
  role_id      = var.role_id
  stage        = var.stage
  target_id    = var.target_id
  target_level = var.target_level
  title        = var.title
}
