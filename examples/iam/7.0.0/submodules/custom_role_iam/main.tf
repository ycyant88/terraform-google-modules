module "iam" {
  source               = "terraform-google-modules/iam/google"
  version              = "7.0.0"
  base_roles           = var.base_roles
  description          = var.description
  excluded_permissions = var.excluded_permissions
  members              = var.members
  permissions          = var.permissions
  role_id              = var.role_id
  stage                = var.stage
  target_id            = var.target_id
  target_level         = var.target_level
  title                = var.title
}
