output "wait" {
  value       = module.kubernetes-engine.wait
  description = "An output to use when you want to depend on registration finishing"
}
