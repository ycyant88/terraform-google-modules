module "project-factory" {
  source                           = "terraform-google-modules/project-factory/google"
  version                          = "11.1.0"
  alert_pubsub_topic               = var.alert_pubsub_topic
  alert_spent_percents             = var.alert_spent_percents
  amount                           = var.amount
  billing_account                  = var.billing_account
  create_budget                    = var.create_budget
  credit_types_treatment           = var.credit_types_treatment
  display_name                     = var.display_name
  monitoring_notification_channels = var.monitoring_notification_channels
  projects                         = var.projects
  services                         = var.services
}
