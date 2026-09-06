output "gcs_bucket_tfstate" {
  value       = module.bootstrap.gcs_bucket_tfstate
  description = "Bucket used for storing terraform state for foundations pipelines in seed project."
}

output "seed_project_id" {
  value       = module.bootstrap.seed_project_id
  description = "Project where service accounts and core APIs will be enabled."
}

output "terraform_sa_email" {
  value       = module.bootstrap.terraform_sa_email
  description = "Email for privileged service account for Terraform."
}

output "terraform_sa_name" {
  value       = module.bootstrap.terraform_sa_name
  description = "Fully qualified name for privileged service account for Terraform."
}
