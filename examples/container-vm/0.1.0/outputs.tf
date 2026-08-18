output "container" {
  value       = module.container-vm.container
  description = ""
}

output "metadata_key" {
  value       = module.container-vm.metadata_key
  description = "The key to assign metadata_value to, so container information is attached to the instance"
}

output "metadata_value" {
  value       = module.container-vm.metadata_value
  description = "The generated container configuration"
}

output "restart_policy" {
  value       = module.container-vm.restart_policy
  description = ""
}

output "source_image" {
  value       = module.container-vm.source_image
  description = "The COS image to use for the GCE instance"
}

output "vm_container_label" {
  value       = module.container-vm.vm_container_label
  description = "The COS version to deploy to the instance. To be used as the value for the vm_container_label_key label key"
}

output "vm_container_label_key" {
  value       = module.container-vm.vm_container_label_key
  description = "The label key for the COS version deployed to the instance"
}

output "volumes" {
  value       = module.container-vm.volumes
  description = ""
}
