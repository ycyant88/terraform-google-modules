output "forseti-client-config" {
  value       = module.forseti_client_config.forseti-client-config
  description = "The rendered Forseti client configuration file"
}
