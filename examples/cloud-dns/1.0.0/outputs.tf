output "domain" {
  value       = module.cloud-dns.domain
  description = "The DNS zone domain."
}

output "name" {
  value       = module.cloud-dns.name
  description = "The DNS zone name."
}

output "name_servers" {
  value       = module.cloud-dns.name_servers
  description = "The DNS zone name servers."
}

output "zone_type" {
  value       = module.cloud-dns.zone_type
  description = "The DNS zone type."
}
