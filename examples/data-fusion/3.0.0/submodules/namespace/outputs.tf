output "name" {
  value       = module.data-fusion.name
  description = "The created CDAP namespace"
}

output "preferences" {
  value       = module.data-fusion.preferences
  description = "The preferences set in the CDAP namespace"
}
