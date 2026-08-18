output "preemptible_name" {
  value       = module.vm_preemptible_and_regular_instance_templates.preemptible_name
  description = "Name of preemptible instance template"
}

output "preemptible_self_link" {
  value       = module.vm_preemptible_and_regular_instance_templates.preemptible_self_link
  description = "Self-link of preemptible instance template"
}

output "regular_name" {
  value       = module.vm_preemptible_and_regular_instance_templates.regular_name
  description = "Name of regular instance template"
}

output "regular_self_link" {
  value       = module.vm_preemptible_and_regular_instance_templates.regular_self_link
  description = "Self-link of regular instance template"
}
