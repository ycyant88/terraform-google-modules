module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "9.1.0"
  domain  = var.domain
  name    = var.name
  org_id  = var.org_id
}
