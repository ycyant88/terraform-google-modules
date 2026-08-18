output "fleet_project_id" {
  value       = module.kubernetes-engine_fleet-app-operator-permissions.fleet_project_id
  description = "The project to which the Fleet belongs."
}

output "wait" {
  value       = module.kubernetes-engine_fleet-app-operator-permissions.wait
  description = "An output to use when you want to depend on Scope RBAC Role Binding creation finishing."
}
