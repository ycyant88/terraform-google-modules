output "attachments" {
  value       = module.vm_compute_disk_snapshot.attachments
  description = "Disk attachments to the resource policy"
}

output "policy" {
  value       = module.vm_compute_disk_snapshot.policy
  description = "Resource snapshot policy details"
}
