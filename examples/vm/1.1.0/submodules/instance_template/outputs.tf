output "name" {
  value       = module.vm_instance_template.name
  description = "Name of instance template"
}

output "self_link" {
  value       = module.vm_instance_template.self_link
  description = "Self-link of instance template"
}
