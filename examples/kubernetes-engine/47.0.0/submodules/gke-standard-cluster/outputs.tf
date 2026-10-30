output "addons_config" {
  value       = module.kubernetes-engine.addons_config
  description = "The configuration for addons supported by GKE Autopilot."
}

output "ca_certificate" {
  value       = module.kubernetes-engine.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "cluster_id" {
  value       = module.kubernetes-engine.cluster_id
  description = "Cluster ID"
}

output "cluster_name" {
  value       = module.kubernetes-engine.cluster_name
  description = "Cluster name"
}

output "endpoint" {
  value       = module.kubernetes-engine.endpoint
  description = "Cluster endpoint"
}

output "endpoint_dns" {
  value       = module.kubernetes-engine.endpoint_dns
  description = "Cluster endpoint DNS"
}

output "horizontal_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine.horizontal_pod_autoscaling_enabled
  description = "Whether horizontal pod autoscaling enabled"
}

output "http_load_balancing_enabled" {
  value       = module.kubernetes-engine.http_load_balancing_enabled
  description = "Whether http load balancing enabled"
}

output "identity_service_enabled" {
  value       = module.kubernetes-engine.identity_service_enabled
  description = "Whether Identity Service is enabled"
}

output "intranode_visibility_enabled" {
  value       = module.kubernetes-engine.intranode_visibility_enabled
  description = "Whether intra-node visibility is enabled"
}

output "location" {
  value       = module.kubernetes-engine.location
  description = "Cluster location (region if regional cluster, zone if zonal cluster)"
}

output "logging_service" {
  value       = module.kubernetes-engine.logging_service
  description = "Logging service used"
}

output "master_authorized_networks_config" {
  value       = module.kubernetes-engine.master_authorized_networks_config
  description = "Networks from which access to master is permitted"
}

output "master_version" {
  value       = module.kubernetes-engine.master_version
  description = "Current master kubernetes version"
}

output "min_master_version" {
  value       = module.kubernetes-engine.min_master_version
  description = "Minimum master kubernetes version"
}

output "monitoring_service" {
  value       = module.kubernetes-engine.monitoring_service
  description = "Monitoring service used"
}

output "network_policy_enabled" {
  value       = module.kubernetes-engine.network_policy_enabled
  description = "Whether network policy enabled"
}

output "node_locations" {
  value       = module.kubernetes-engine.node_locations
  description = "The list of zones in which the cluster's nodes are located."
}

output "secret_manager_addon_enabled" {
  value       = module.kubernetes-engine.secret_manager_addon_enabled
  description = "Whether Secret Manager add-on is enabled"
}

output "vertical_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine.vertical_pod_autoscaling_enabled
  description = "Whether vertical pod autoscaling enabled"
}
