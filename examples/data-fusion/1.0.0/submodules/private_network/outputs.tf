output "data_fusion_ip_allocation" {
  value       = module.data-fusion_private_network.data_fusion_ip_allocation
  description = "The IP CIDR range reserved for the private Data Fusion instance"
}

output "data_fusion_vpc" {
  value       = module.data-fusion_private_network.data_fusion_vpc
  description = "The VPC created for the private Data Fusion instance"
}

output "dataproc_subnet" {
  value       = module.data-fusion_private_network.dataproc_subnet
  description = "The subnetwork created for Dataproc clusters controlled by the private Data Fusion instance"
}

output "network_name" {
  value       = module.data-fusion_private_network.network_name
  description = "The VPC created for the private Data Fusion instance"
}
