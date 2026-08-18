terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

module "cloud-operations_simple-uptime-check" {
  source                           = "terraform-google-modules/cloud-operations/google//modules/simple-uptime-check"
  version                          = "0.5.0"
  accepted_response_status_classes = var.accepted_response_status_classes
  accepted_response_status_values  = var.accepted_response_status_values
  aggregations                     = var.aggregations
  alert_policy_combiner            = var.alert_policy_combiner
  alert_policy_display_name        = var.alert_policy_display_name
  alert_policy_user_labels         = var.alert_policy_user_labels
  auth_info                        = var.auth_info
  auto_close                       = var.auto_close
  body                             = var.body
  checker_type                     = var.checker_type
  condition_display_name           = var.condition_display_name
  condition_threshold_comparison   = var.condition_threshold_comparison
  condition_threshold_duration     = var.condition_threshold_duration
  condition_threshold_filter       = var.condition_threshold_filter
  condition_threshold_trigger      = var.condition_threshold_trigger
  condition_threshold_value        = var.condition_threshold_value
  content                          = var.content
  content_type                     = var.content_type
  enabled                          = var.enabled
  existing_notification_channels   = var.existing_notification_channels
  headers                          = var.headers
  json_path_matcher                = var.json_path_matcher
  mask_headers                     = var.mask_headers
  matcher                          = var.matcher
  monitored_resource               = var.monitored_resource
  notification_channel_strategy    = var.notification_channel_strategy
  notification_channels            = var.notification_channels
  notification_rate_limit_period   = var.notification_rate_limit_period
  path                             = var.path
  period                           = var.period
  port                             = var.port
  project_id                       = var.project_id
  protocol                         = var.protocol
  request_method                   = var.request_method
  resource_group                   = var.resource_group
  selected_regions                 = var.selected_regions
  timeout                          = var.timeout
  uptime_check_display_name        = var.uptime_check_display_name
  validate_ssl                     = var.validate_ssl
}
