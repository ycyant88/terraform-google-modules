output "subnets" {
  value       = module.network_subnets.subnets
  description = "The created subnet resources"
}
