output "wait" {
  value       = module.kubernetes-engine_hub.wait
  description = "An output to use when you want to depend on registration finishing"
}
