output "forseti-server-config" {
  value       = module.forseti_server_config.forseti-server-config
  description = "The rendered Forseti server configuration file"
}

output "forseti-server-config-md5" {
  value       = module.forseti_server_config.forseti-server-config-md5
  description = "The Base64 encoded md5 hash for the server configuration file"
}
