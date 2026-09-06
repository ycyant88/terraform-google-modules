module "project-factory" {
  source                 = "terraform-google-modules/project-factory/google"
  version                = "8.0.0"
  alert_pubsub_topic     = var.alert_pubsub_topic
  alert_spent_percents   = var.alert_spent_percents
  amount                 = var.amount
  billing_account        = var.billing_account
  create_budget          = var.create_budget
  credit_types_treatment = var.credit_types_treatment
  display_name           = var.display_name
  projects               = var.projects
  services               = var.services
}
