output "instance_machine_type" {
  value       = module.sap_netweaver.instance_machine_type
  description = "Primary GCE instance/machine type."
}

output "instance_name" {
  value       = module.sap_netweaver.instance_name
  description = "Name of Netweaver instance"
}

output "zone" {
  value       = module.sap_netweaver.zone
  description = "Compute Engine instance deployment zone"
}
