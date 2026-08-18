output "ca_certificate" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "cloudrun_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.cloudrun_enabled
  description = "Whether CloudRun enabled"
}

output "cluster_id" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.cluster_id
  description = "Cluster ID"
}

output "dns_cache_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.dns_cache_enabled
  description = "Whether DNS Cache enabled"
}

output "endpoint" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.endpoint
  description = "Cluster endpoint"
}

output "fleet_membership" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.fleet_membership
  description = "Fleet membership (if registered)"
}

output "gateway_api_channel" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.gateway_api_channel
  description = "The gateway api channel of this cluster."
}

output "horizontal_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.horizontal_pod_autoscaling_enabled
  description = "Whether horizontal pod autoscaling enabled"
}

output "http_load_balancing_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.http_load_balancing_enabled
  description = "Whether http load balancing enabled"
}

output "identity_namespace" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.identity_namespace
  description = "Workload Identity pool"
}

output "identity_service_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.identity_service_enabled
  description = "Whether Identity Service is enabled"
}

output "intranode_visibility_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.intranode_visibility_enabled
  description = "Whether intra-node visibility is enabled"
}

output "istio_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.istio_enabled
  description = "Whether Istio is enabled"
}

output "location" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.location
  description = "Cluster location (region if regional cluster, zone if zonal cluster)"
}

output "logging_service" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.logging_service
  description = "Logging service used"
}

output "master_authorized_networks_config" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.master_authorized_networks_config
  description = "Networks from which access to master is permitted"
}

output "master_version" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.master_version
  description = "Current master kubernetes version"
}

output "min_master_version" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.min_master_version
  description = "Minimum master kubernetes version"
}

output "monitoring_service" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.monitoring_service
  description = "Monitoring service used"
}

output "name" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.name
  description = "Cluster name"
}

output "pod_security_policy_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.pod_security_policy_enabled
  description = "Whether pod security policy is enabled"
}

output "region" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.region
  description = "Cluster region"
}

output "release_channel" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.release_channel
  description = "The release channel of this cluster"
}

output "service_account" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.service_account
  description = "The service account to default running nodes as if not overridden in node_pools."
}

output "tpu_ipv4_cidr_block" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.tpu_ipv4_cidr_block
  description = "The IP range in CIDR notation used for the TPUs"
}

output "type" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.type
  description = "Cluster type (regional / zonal)"
}

output "vertical_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.vertical_pod_autoscaling_enabled
  description = "Whether vertical pod autoscaling enabled"
}

output "zones" {
  value       = module.kubernetes-engine_beta-autopilot-public-cluster.zones
  description = "List of zones in which the cluster resides"
}
