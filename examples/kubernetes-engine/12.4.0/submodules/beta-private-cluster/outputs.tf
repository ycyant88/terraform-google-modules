output "ca_certificate" {
  value       = module.kubernetes-engine_beta-private-cluster.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "cloudrun_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.cloudrun_enabled
  description = "Whether CloudRun enabled"
}

output "dns_cache_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.dns_cache_enabled
  description = "Whether DNS Cache enabled"
}

output "endpoint" {
  value       = module.kubernetes-engine_beta-private-cluster.endpoint
  description = "Cluster endpoint"
}

output "horizontal_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.horizontal_pod_autoscaling_enabled
  description = "Whether horizontal pod autoscaling enabled"
}

output "http_load_balancing_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.http_load_balancing_enabled
  description = "Whether http load balancing enabled"
}

output "identity_namespace" {
  value       = module.kubernetes-engine_beta-private-cluster.identity_namespace
  description = "Workload Identity namespace"
}

output "instance_group_urls" {
  value       = module.kubernetes-engine_beta-private-cluster.instance_group_urls
  description = "List of GKE generated instance groups"
}

output "intranode_visibility_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.intranode_visibility_enabled
  description = "Whether intra-node visibility is enabled"
}

output "istio_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.istio_enabled
  description = "Whether Istio is enabled"
}

output "location" {
  value       = module.kubernetes-engine_beta-private-cluster.location
  description = "Cluster location (region if regional cluster, zone if zonal cluster)"
}

output "logging_service" {
  value       = module.kubernetes-engine_beta-private-cluster.logging_service
  description = "Logging service used"
}

output "master_authorized_networks_config" {
  value       = module.kubernetes-engine_beta-private-cluster.master_authorized_networks_config
  description = "Networks from which access to master is permitted"
}

output "master_ipv4_cidr_block" {
  value       = module.kubernetes-engine_beta-private-cluster.master_ipv4_cidr_block
  description = "The IP range in CIDR notation used for the hosted master network"
}

output "master_version" {
  value       = module.kubernetes-engine_beta-private-cluster.master_version
  description = "Current master kubernetes version"
}

output "min_master_version" {
  value       = module.kubernetes-engine_beta-private-cluster.min_master_version
  description = "Minimum master kubernetes version"
}

output "monitoring_service" {
  value       = module.kubernetes-engine_beta-private-cluster.monitoring_service
  description = "Monitoring service used"
}

output "name" {
  value       = module.kubernetes-engine_beta-private-cluster.name
  description = "Cluster name"
}

output "network_policy_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.network_policy_enabled
  description = "Whether network policy enabled"
}

output "node_pools_names" {
  value       = module.kubernetes-engine_beta-private-cluster.node_pools_names
  description = "List of node pools names"
}

output "node_pools_versions" {
  value       = module.kubernetes-engine_beta-private-cluster.node_pools_versions
  description = "List of node pools versions"
}

output "peering_name" {
  value       = module.kubernetes-engine_beta-private-cluster.peering_name
  description = "The name of the peering between this cluster and the Google owned VPC."
}

output "pod_security_policy_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.pod_security_policy_enabled
  description = "Whether pod security policy is enabled"
}

output "region" {
  value       = module.kubernetes-engine_beta-private-cluster.region
  description = "Cluster region"
}

output "release_channel" {
  value       = module.kubernetes-engine_beta-private-cluster.release_channel
  description = "The release channel of this cluster"
}

output "service_account" {
  value       = module.kubernetes-engine_beta-private-cluster.service_account
  description = "The service account to default running nodes as if not overridden in node_pools."
}

output "type" {
  value       = module.kubernetes-engine_beta-private-cluster.type
  description = "Cluster type (regional / zonal)"
}

output "vertical_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_beta-private-cluster.vertical_pod_autoscaling_enabled
  description = "Whether veritical pod autoscaling is enabled"
}

output "zones" {
  value       = module.kubernetes-engine_beta-private-cluster.zones
  description = "List of zones in which the cluster resides"
}
