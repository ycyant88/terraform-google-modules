output "alert_policy_id" {
  value       = module.cloud-operations_simple-uptime-check.alert_policy_id
  description = "The id of the alert policy."
}

output "notification_channel_ids" {
  value       = module.cloud-operations_simple-uptime-check.notification_channel_ids
  description = "The ids of the notification channels"
}

output "uptime_check_id" {
  value       = module.cloud-operations_simple-uptime-check.uptime_check_id
  description = "The id of the uptime check."
}
