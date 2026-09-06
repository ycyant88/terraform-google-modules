module "project-factory" {
  source             = "terraform-google-modules/project-factory/google"
  version            = "18.1.0"
  essential_contacts = var.essential_contacts
  language_tag       = var.language_tag
  project_id         = var.project_id
}
