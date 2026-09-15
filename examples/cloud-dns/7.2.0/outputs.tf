output "domain" {
  value       = module.cloud-dns.domain
  description = "The DNS zone domain."
}

output "etag" {
  value       = module.cloud-dns.etag
  description = "The etag of the IAM policy"
}

output "name" {
  value       = module.cloud-dns.name
  description = "The DNS zone name."
}

output "name_servers" {
  value       = module.cloud-dns.name_servers
  description = "The DNS zone name servers."
}

output "type" {
  value       = module.cloud-dns.type
  description = "The DNS zone type."
}
