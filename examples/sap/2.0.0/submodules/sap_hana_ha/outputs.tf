output "sap_hana_ha_firewall_link" {
  value       = module.sap_sap_hana_ha.sap_hana_ha_firewall_link
  description = "Link to the optional fire wall"
}

output "sap_hana_ha_loadbalander_link" {
  value       = module.sap_sap_hana_ha.sap_hana_ha_loadbalander_link
  description = "Link to the optional load balancer"
}

output "sap_hana_ha_primary_instance_self_link" {
  value       = module.sap_sap_hana_ha.sap_hana_ha_primary_instance_self_link
  description = "Self-link for the primary SAP HANA HA instance created."
}

output "sap_hana_ha_primary_worker_self_links" {
  value       = module.sap_sap_hana_ha.sap_hana_ha_primary_worker_self_links
  description = "Self-link for the worker nodes in the primary SAP HANA HA instance."
}

output "sap_hana_ha_secondary_instance_self_link" {
  value       = module.sap_sap_hana_ha.sap_hana_ha_secondary_instance_self_link
  description = "Self-link for the secondary SAP HANA HA instance created."
}

output "sap_hana_ha_secondary_worker_self_links" {
  value       = module.sap_sap_hana_ha.sap_hana_ha_secondary_worker_self_links
  description = "Self-link for the worker nodes in the secondary SAP HANA HA instance."
}
