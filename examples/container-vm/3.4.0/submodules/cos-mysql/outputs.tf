output "instances" {
  value       = module.container-vm.instances
  description = "Instance name => address map."
}

output "password" {
  value       = module.container-vm.password
  description = "Auto-generated password, if no password was set as a variable."
}
