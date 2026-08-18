output "hana_scaleout_standby_self_links" {
  value       = module.sap_sap_hana_scaleout.hana_scaleout_standby_self_links
  description = "List of self-links for the hana scaleout standbys created"
}

output "hana_scaleout_worker_self_links" {
  value       = module.sap_sap_hana_scaleout.hana_scaleout_worker_self_links
  description = "List of self-links for the hana scaleout workers created"
}

output "sap_hana_primary_self_link" {
  value       = module.sap_sap_hana_scaleout.sap_hana_primary_self_link
  description = "Self-link for the primary SAP HANA Scalout instance created."
}
