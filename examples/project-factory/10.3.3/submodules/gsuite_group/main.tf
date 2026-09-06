module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "10.3.3"
  domain  = var.domain
  name    = var.name
  org_id  = var.org_id
}
