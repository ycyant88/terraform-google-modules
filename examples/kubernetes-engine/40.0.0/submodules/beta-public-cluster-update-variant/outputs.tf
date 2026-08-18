output "ca_certificate" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "cloudrun_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.cloudrun_enabled
  description = "Whether CloudRun enabled"
}

output "cluster_id" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.cluster_id
  description = "Cluster ID"
}

output "dns_cache_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.dns_cache_enabled
  description = "Whether DNS Cache enabled"
}

output "endpoint" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.endpoint
  description = "Cluster endpoint"
}

output "endpoint_dns" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.endpoint_dns
  description = "Cluster endpoint DNS"
}

output "fleet_membership" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.fleet_membership
  description = "Fleet membership (if registered)"
}

output "gateway_api_channel" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.gateway_api_channel
  description = "The gateway api channel of this cluster."
}

output "horizontal_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.horizontal_pod_autoscaling_enabled
  description = "Whether horizontal pod autoscaling enabled"
}

output "http_load_balancing_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.http_load_balancing_enabled
  description = "Whether http load balancing enabled"
}

output "identity_namespace" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.identity_namespace
  description = "Workload Identity pool"
}

output "identity_service_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.identity_service_enabled
  description = "Whether Identity Service is enabled"
}

output "instance_group_urls" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.instance_group_urls
  description = "List of GKE generated instance groups"
}

output "intranode_visibility_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.intranode_visibility_enabled
  description = "Whether intra-node visibility is enabled"
}

output "istio_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.istio_enabled
  description = "Whether Istio is enabled"
}

output "location" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.location
  description = "Cluster location (region if regional cluster, zone if zonal cluster)"
}

output "logging_service" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.logging_service
  description = "Logging service used"
}

output "master_authorized_networks_config" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.master_authorized_networks_config
  description = "Networks from which access to master is permitted"
}

output "master_version" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.master_version
  description = "Current master kubernetes version"
}

output "mesh_certificates_config" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.mesh_certificates_config
  description = "Mesh certificates configuration"
}

output "min_master_version" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.min_master_version
  description = "Minimum master kubernetes version"
}

output "monitoring_service" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.monitoring_service
  description = "Monitoring service used"
}

output "name" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.name
  description = "Cluster name"
}

output "network_policy_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.network_policy_enabled
  description = "Whether network policy enabled"
}

output "node_pools_names" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.node_pools_names
  description = "List of node pools names"
}

output "node_pools_versions" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.node_pools_versions
  description = "Node pool versions by node pool name"
}

output "pod_security_policy_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.pod_security_policy_enabled
  description = "Whether pod security policy is enabled"
}

output "region" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.region
  description = "Cluster region"
}

output "release_channel" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.release_channel
  description = "The release channel of this cluster"
}

output "secret_manager_addon_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.secret_manager_addon_enabled
  description = "Whether Secret Manager add-on is enabled"
}

output "service_account" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.service_account
  description = "The service account to default running nodes as if not overridden in node_pools."
}

output "tpu_ipv4_cidr_block" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.tpu_ipv4_cidr_block
  description = "The IP range in CIDR notation used for the TPUs"
}

output "type" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.type
  description = "Cluster type (regional / zonal)"
}

output "vertical_pod_autoscaling_enabled" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.vertical_pod_autoscaling_enabled
  description = "Whether vertical pod autoscaling enabled"
}

output "zones" {
  value       = module.kubernetes-engine_beta-public-cluster-update-variant.zones
  description = "List of zones in which the cluster resides"
}
