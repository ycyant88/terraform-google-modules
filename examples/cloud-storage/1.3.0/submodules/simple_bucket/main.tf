module "cloud-storage" {
  source             = "terraform-google-modules/cloud-storage/google"
  version            = "1.3.0"
  bucket_policy_only = var.bucket_policy_only
  encryption         = var.encryption
  force_destroy      = var.force_destroy
  iam_members        = var.iam_members
  labels             = var.labels
  location           = var.location
  name               = var.name
  project_id         = var.project_id
  retention_policy   = var.retention_policy
  storage_class      = var.storage_class
  versioning         = var.versioning
}
