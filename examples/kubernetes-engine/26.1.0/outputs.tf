output "ca_certificate" {
  value       = module.kubernetes-engine.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "cluster_id" {
  value       = module.kubernetes-engine.cluster_id
  description = "Cluster ID"
}

output "endpoint" {
  value       = module.kubernetes-engine.endpoint
  description = "Cluster endpoint"
}

output "gateway_api_channel" {
  value       = module.kubernetes-engine.gateway_api_channel
  description = "The gateway api channel of this cluster."
}

output "horizontal_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine.horizontal_pod_autoscaling_enabled
  description = "Whether horizontal pod autoscaling enabled"
}

output "http_load_balancing_enabled" {
  value       = module.kubernetes-engine.http_load_balancing_enabled
  description = "Whether http load balancing enabled"
}

output "identity_namespace" {
  value       = module.kubernetes-engine.identity_namespace
  description = "Workload Identity pool"
}

output "instance_group_urls" {
  value       = module.kubernetes-engine.instance_group_urls
  description = "List of GKE generated instance groups"
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

output "name" {
  value       = module.kubernetes-engine.name
  description = "Cluster name"
}

output "network_policy_enabled" {
  value       = module.kubernetes-engine.network_policy_enabled
  description = "Whether network policy enabled"
}

output "node_pools_names" {
  value       = module.kubernetes-engine.node_pools_names
  description = "List of node pools names"
}

output "node_pools_versions" {
  value       = module.kubernetes-engine.node_pools_versions
  description = "Node pool versions by node pool name"
}

output "region" {
  value       = module.kubernetes-engine.region
  description = "Cluster region"
}

output "release_channel" {
  value       = module.kubernetes-engine.release_channel
  description = "The release channel of this cluster"
}

output "service_account" {
  value       = module.kubernetes-engine.service_account
  description = "The service account to default running nodes as if not overridden in node_pools."
}

output "type" {
  value       = module.kubernetes-engine.type
  description = "Cluster type (regional / zonal)"
}

output "vertical_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine.vertical_pod_autoscaling_enabled
  description = "Whether vertical pod autoscaling enabled"
}

output "zones" {
  value       = module.kubernetes-engine.zones
  description = "List of zones in which the cluster resides"
}
