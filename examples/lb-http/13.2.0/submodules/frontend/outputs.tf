output "apphub_service_uri" {
  value       = module.lb-http.apphub_service_uri
  description = "Service URI in CAIS style to be used by Apphub."
}

output "external_ip" {
  value       = module.lb-http.external_ip
  description = "The external IPv4 assigned to the global fowarding rule."
}

output "external_ipv6_address" {
  value       = module.lb-http.external_ipv6_address
  description = "The external IPv6 assigned to the global fowarding rule."
}

output "http_proxy" {
  value       = module.lb-http.http_proxy
  description = "The HTTP proxy used by this module."
}

output "https_proxy" {
  value       = module.lb-http.https_proxy
  description = "The HTTPS proxy used by this module."
}

output "ip_address_internal_managed_http" {
  value       = module.lb-http.ip_address_internal_managed_http
  description = "The internal/external IP addresses assigned to the HTTP forwarding rules."
}

output "ip_address_internal_managed_https" {
  value       = module.lb-http.ip_address_internal_managed_https
  description = "The internal/external IP addresses assigned to the HTTPS forwarding rules."
}

output "ipv6_enabled" {
  value       = module.lb-http.ipv6_enabled
  description = "Whether IPv6 configuration is enabled on this load-balancer"
}

output "ssl_certificate_created" {
  value       = module.lb-http.ssl_certificate_created
  description = "The SSL certificate create from key/pem"
}

output "url_map" {
  value       = module.lb-http.url_map
  description = "The default URL map used by this module."
}
