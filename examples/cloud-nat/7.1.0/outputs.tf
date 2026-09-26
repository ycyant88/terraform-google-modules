output "name" {
  value       = module.cloud-nat.name
  description = "Name of the Cloud NAT"
}

output "nat_ip_allocate_option" {
  value       = module.cloud-nat.nat_ip_allocate_option
  description = "NAT IP allocation mode"
}

output "region" {
  value       = module.cloud-nat.region
  description = "Cloud NAT region"
}

output "router_name" {
  value       = module.cloud-nat.router_name
  description = "Cloud NAT router name"
}
