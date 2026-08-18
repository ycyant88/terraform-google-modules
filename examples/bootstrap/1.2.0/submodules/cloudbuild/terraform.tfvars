activate_apis = ["serviceusage.googleapis.com", "servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com", "storage-api.googleapis.com"]

billing_account = ""

cloud_source_repos = ["gcp-org", "gcp-networks", "gcp-projects"]

cloudbuild_apply_filename = "cloudbuild-tf-apply.yaml"

cloudbuild_plan_filename = "cloudbuild-tf-plan.yaml"

default_region = "us-central1"

folder_id = ""

group_org_admins = ""

org_id = ""

project_labels = {}

project_prefix = "cft"

sa_enable_impersonation = false

skip_gcloud_download = true

storage_bucket_labels = {}

terraform_apply_branches = ["master"]

terraform_sa_email = ""

terraform_sa_name = ""

terraform_state_bucket = ""

terraform_version = "0.12.24"

terraform_version_sha256sum = "602d2529aafdaa0f605c06adb7c72cfb585d8aa19b3f4d8d189b42589e27bf11"
