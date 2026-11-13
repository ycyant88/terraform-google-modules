output "https_trigger_url" {
  value       = module.event-function.https_trigger_url
  description = "URL which triggers function execution."
}

output "name" {
  value       = module.event-function.name
  description = "The name of the function."
}
