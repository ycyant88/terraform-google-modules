module "jenkins" {
  source     = "terraform-google-modules/jenkins/google"
  version    = "1.2.0"
  jobs       = var.jobs
  jobs_count = var.jobs_count
  project_id = var.project_id
}
