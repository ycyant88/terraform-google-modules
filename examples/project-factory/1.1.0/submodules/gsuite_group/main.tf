module "project-factory" {
  source       = "terraform-google-modules/project-factory/google"
  version      = "1.1.0"
  create_group = var.create_group
  domain       = var.domain
  name         = var.name
  org_id       = var.org_id
}
