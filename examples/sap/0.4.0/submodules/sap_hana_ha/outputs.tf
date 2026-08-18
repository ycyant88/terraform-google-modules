output "primary_instance_machine_type" {
  value       = module.sap_sap_hana_ha.primary_instance_machine_type
  description = "Primary GCE instance/machine type."
}

output "primary_instance_name" {
  value       = module.sap_sap_hana_ha.primary_instance_name
  description = "Name of sap primary instance"
}

output "primary_zone" {
  value       = module.sap_sap_hana_ha.primary_zone
  description = "Compute Engine primary instance deployment zone"
}

output "secondary_instance_machine_type" {
  value       = module.sap_sap_hana_ha.secondary_instance_machine_type
  description = "Secondary GCE instance/machine type."
}

output "secondary_instance_name" {
  value       = module.sap_sap_hana_ha.secondary_instance_name
  description = "Name of sap secondary instance"
}

output "secondary_zone" {
  value       = module.sap_sap_hana_ha.secondary_zone
  description = "Compute Engine secondary instance deployment zone"
}
