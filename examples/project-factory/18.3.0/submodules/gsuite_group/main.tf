module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "18.3.0"
  domain  = var.domain
  name    = var.name
  org_id  = var.org_id
}
