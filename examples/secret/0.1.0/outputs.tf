output "contents" {
  value       = module.secret.contents
  description = "The actual value of the requested secret"
}
