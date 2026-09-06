output "contents" {
  value       = module.secret.contents
  description = "The contents of the requested GCS object"
}
