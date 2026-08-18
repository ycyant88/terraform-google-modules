output "subnets" {
  value       = module.network_subnets-beta.subnets
  description = "The created subnet resources"
}
