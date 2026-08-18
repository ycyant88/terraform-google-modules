output "managed_zones" {
  value       = module.iam_dns_zones_iam.managed_zones
  description = "DNS Managed Zones which received for bindings."
}

output "members" {
  value       = module.iam_dns_zones_iam.members
  description = "Members which were bound to the DNS managed zones."
}

output "roles" {
  value       = module.iam_dns_zones_iam.roles
  description = "Roles which were assigned to members."
}
