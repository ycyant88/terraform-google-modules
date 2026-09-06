output "name" {
  value       = module.vm.name
  description = "Name of instance template"
}

output "network_interface_details" {
  value       = module.vm.network_interface_details
  description = "The names and VLAN tags of the template interfaces."
}

output "self_link" {
  value       = module.vm.self_link
  description = "Self-link of instance template"
}

output "self_link_unique" {
  value       = module.vm.self_link_unique
  description = "Unique self-link of instance template (recommended output to use instead of self_link)"
}

output "service_account_info" {
  value       = module.vm.service_account_info
  description = "Service account id and email"
}

output "tags" {
  value       = module.vm.tags
  description = "Tags that will be associated with instance(s)"
}
