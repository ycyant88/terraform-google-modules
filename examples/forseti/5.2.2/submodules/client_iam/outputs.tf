output "forseti-client-service-account" {
  value       = module.forseti_client_iam.forseti-client-service-account
  description = "Forseti Client service account"
}
