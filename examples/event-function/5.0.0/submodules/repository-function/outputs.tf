output "https_trigger_url" {
  value       = module.event-function_repository-function.https_trigger_url
  description = "URL which triggers function execution."
}

output "name" {
  value       = module.event-function_repository-function.name
  description = "The name of the function."
}
