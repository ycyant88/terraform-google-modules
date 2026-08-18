output "forseti-rt-enforcer-viewer-role-id" {
  value       = module.forseti_real_time_enforcer_roles.forseti-rt-enforcer-viewer-role-id
  description = "The forseti real time enforcer viewer Role ID."
}

output "forseti-rt-enforcer-writer-role-id" {
  value       = module.forseti_real_time_enforcer_roles.forseti-rt-enforcer-writer-role-id
  description = "The forseti real time enforcer writer Role ID."
}
