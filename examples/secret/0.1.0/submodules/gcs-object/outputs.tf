output "contents" {
  value       = module.secret_gcs-object.contents
  description = "The contents of the requested GCS object"
}
