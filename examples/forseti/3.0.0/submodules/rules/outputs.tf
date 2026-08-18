output "files" {
  value       = module.forseti_rules.files
  description = "A list of files that will be uploaded as Forseti rules"
}
