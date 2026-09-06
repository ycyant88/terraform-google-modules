module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "14.2.1"
  domain  = var.domain
  name    = var.name
  org_id  = var.org_id
}
