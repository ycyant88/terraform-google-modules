output "addons_config" {
  value       = module.kubernetes-engine_gke-standard-cluster.addons_config
  description = "The configuration for addons supported by GKE Autopilot."
}

output "ca_certificate" {
  value       = module.kubernetes-engine_gke-standard-cluster.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "cluster_id" {
  value       = module.kubernetes-engine_gke-standard-cluster.cluster_id
  description = "Cluster ID"
}

output "cluster_name" {
  value       = module.kubernetes-engine_gke-standard-cluster.cluster_name
  description = "Cluster name"
}

output "endpoint" {
  value       = module.kubernetes-engine_gke-standard-cluster.endpoint
  description = "Cluster endpoint"
}

output "endpoint_dns" {
  value       = module.kubernetes-engine_gke-standard-cluster.endpoint_dns
  description = "Cluster endpoint DNS"
}

output "horizontal_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.horizontal_pod_autoscaling_enabled
  description = "Whether horizontal pod autoscaling enabled"
}

output "http_load_balancing_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.http_load_balancing_enabled
  description = "Whether http load balancing enabled"
}

output "identity_service_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.identity_service_enabled
  description = "Whether Identity Service is enabled"
}

output "intranode_visibility_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.intranode_visibility_enabled
  description = "Whether intra-node visibility is enabled"
}

output "location" {
  value       = module.kubernetes-engine_gke-standard-cluster.location
  description = "Cluster location (region if regional cluster, zone if zonal cluster)"
}

output "logging_service" {
  value       = module.kubernetes-engine_gke-standard-cluster.logging_service
  description = "Logging service used"
}

output "master_authorized_networks_config" {
  value       = module.kubernetes-engine_gke-standard-cluster.master_authorized_networks_config
  description = "Networks from which access to master is permitted"
}

output "master_version" {
  value       = module.kubernetes-engine_gke-standard-cluster.master_version
  description = "Current master kubernetes version"
}

output "min_master_version" {
  value       = module.kubernetes-engine_gke-standard-cluster.min_master_version
  description = "Minimum master kubernetes version"
}

output "monitoring_service" {
  value       = module.kubernetes-engine_gke-standard-cluster.monitoring_service
  description = "Monitoring service used"
}

output "network_policy_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.network_policy_enabled
  description = "Whether network policy enabled"
}

output "node_locations" {
  value       = module.kubernetes-engine_gke-standard-cluster.node_locations
  description = "The list of zones in which the cluster's nodes are located."
}

output "secret_manager_addon_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.secret_manager_addon_enabled
  description = "Whether Secret Manager add-on is enabled"
}

output "vertical_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_gke-standard-cluster.vertical_pod_autoscaling_enabled
  description = "Whether vertical pod autoscaling enabled"
}
