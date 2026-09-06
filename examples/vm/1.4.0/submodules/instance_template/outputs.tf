output "name" {
  value       = module.vm.name
  description = "Name of instance template"
}

output "self_link" {
  value       = module.vm.self_link
  description = "Self-link of instance template"
}

output "tags" {
  value       = module.vm.tags
  description = "Tags that will be associated with instance(s)"
}
