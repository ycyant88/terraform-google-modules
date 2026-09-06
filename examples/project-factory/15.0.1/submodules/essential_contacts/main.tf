module "project-factory" {
  source             = "terraform-google-modules/project-factory/google"
  version            = "15.0.1"
  essential_contacts = var.essential_contacts
  language_tag       = var.language_tag
  project_id         = var.project_id
}
