output "instances" {
  value       = module.container-vm.instances
  description = "Instance name => address map."
}

output "internal_addresses" {
  value       = module.container-vm.internal_addresses
  description = "List of instance internal addresses."
}

output "names" {
  value       = module.container-vm.names
  description = "List of instance names."
}
