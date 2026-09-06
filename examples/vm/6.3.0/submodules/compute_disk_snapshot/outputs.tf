output "attachments" {
  value       = module.vm.attachments
  description = "Disk attachments to the resource policy"
}

output "policy" {
  value       = module.vm.policy
  description = "Resource snapshot policy details"
}
