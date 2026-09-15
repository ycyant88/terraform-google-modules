output "folder" {
  value       = module.folders.folder
  description = "Folder resource (for single use)."
}

output "folders" {
  value       = module.folders.folders
  description = "Folder resources as list."
}

output "folders_map" {
  value       = module.folders.folders_map
  description = "Folder resources by name."
}

output "id" {
  value       = module.folders.id
  description = "Folder id (for single use)."
}

output "ids" {
  value       = module.folders.ids
  description = "Folder ids."
}

output "ids_list" {
  value       = module.folders.ids_list
  description = "List of folder ids."
}

output "name" {
  value       = module.folders.name
  description = "Folder name (for single use)."
}

output "names" {
  value       = module.folders.names
  description = "Folder names."
}

output "names_list" {
  value       = module.folders.names_list
  description = "List of folder names."
}

output "per_folder_admins" {
  value       = module.folders.per_folder_admins
  description = "IAM-style members per folder who will get extended permissions."
}
