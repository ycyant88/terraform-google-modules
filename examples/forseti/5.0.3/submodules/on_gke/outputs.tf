output "forseti-client-service-account" {
  value       = module.forseti_on_gke.forseti-client-service-account
  description = "Forseti Client service account"
}

output "forseti-client-storage-bucket" {
  value       = module.forseti_on_gke.forseti-client-storage-bucket
  description = "Forseti Client storage bucket"
}

output "forseti-client-vm-ip" {
  value       = module.forseti_on_gke.forseti-client-vm-ip
  description = "Forseti Client VM private IP address"
}

output "forseti-cloudsql-connection-name" {
  value       = module.forseti_on_gke.forseti-cloudsql-connection-name
  description = "Forseti CloudSQL Connection String"
}

output "forseti-server-service-account" {
  value       = module.forseti_on_gke.forseti-server-service-account
  description = "Forseti Server service account"
}

output "forseti-server-storage-bucket" {
  value       = module.forseti_on_gke.forseti-server-storage-bucket
  description = "Forseti Server storage bucket"
}

output "kubernetes-forseti-namespace" {
  value       = module.forseti_on_gke.kubernetes-forseti-namespace
  description = "The Kubernetes namespace in which Forseti is deployed"
}

output "kubernetes-forseti-server-ingress" {
  value       = module.forseti_on_gke.kubernetes-forseti-server-ingress
  description = "The loadbalancer ingress address of the forseti-server service in GKE"
}

output "kubernetes-forseti-tiller-sa-name" {
  value       = module.forseti_on_gke.kubernetes-forseti-tiller-sa-name
  description = "The name of the service account deploying Forseti"
}

output "suffix" {
  value       = module.forseti_on_gke.suffix
  description = "The random suffix appended to Forseti resources"
}
