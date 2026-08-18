output "wait" {
  value       = module.composer_master_authorized_networks.wait
  description = "An output to use when you want to depend on cmd finishing"
}
