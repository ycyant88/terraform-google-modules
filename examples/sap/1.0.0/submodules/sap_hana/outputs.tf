output "sap_hana_primary_self_link" {
  value       = module.sap_sap_hana.sap_hana_primary_self_link
  description = "SAP HANA self-link for the primary instance created"
}

output "sap_hana_worker_self_links" {
  value       = module.sap_sap_hana.sap_hana_worker_self_links
  description = "SAP HANA self-links for the secondary instances created"
}
