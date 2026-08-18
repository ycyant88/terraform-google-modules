output "name" {
  value       = module.data-fusion_namespace.name
  description = "The created CDAP namespace"
}

output "preferences" {
  value       = module.data-fusion_namespace.preferences
  description = "The preferences set in the CDAP namespace"
}
