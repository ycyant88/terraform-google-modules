output "service_attachment_id" {
  value       = module.network_private-service-connect-producer.service_attachment_id
  description = "ID of the service attachment with format projects/{$project}/regions/{$region}/serviceAttachments/{$name}"
}

output "service_attachment_name" {
  value       = module.network_private-service-connect-producer.service_attachment_name
  description = "Name of the service attachment"
}

output "service_attachment_self_link" {
  value       = module.network_private-service-connect-producer.service_attachment_self_link
  description = "Self link of the service attachment with format https://www.googleapis.com/compute/v1/projects/{$project}/regions/{$region}/serviceAttachments/{$name}"
}
