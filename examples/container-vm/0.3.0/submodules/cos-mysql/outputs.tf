output "instances" {
  value       = module.container-vm_cos-mysql.instances
  description = "Instance name => address map."
}

output "password" {
  value       = module.container-vm_cos-mysql.password
  description = "Auto-generated password, if no password was set as a variable."
}
