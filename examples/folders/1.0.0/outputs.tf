output "names_and_display_names" {
  value       = module.folders.names_and_display_names
  description = "Map of name => folder resource name."
}

output "names_and_ids" {
  value       = module.folders.names_and_ids
  description = "Map of name => folder resource id."
}
