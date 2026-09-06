activate_apis = ["serviceusage.googleapis.com", "servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com", "storage-api.googleapis.com"]

billing_account = ""

cloud_source_repos = ["gcp-org", "gcp-networks", "gcp-projects"]

cloudbuild_apply_filename = "cloudbuild-tf-apply.yaml"

cloudbuild_plan_filename = "cloudbuild-tf-plan.yaml"

create_cloud_source_repos = true

default_region = "us-central1"

folder_id = ""

group_org_admins = ""

org_id = ""

project_id = ""

project_labels = {}

project_prefix = "cft"

sa_enable_impersonation = false

storage_bucket_labels = {}

terraform_apply_branches = ["master"]

terraform_sa_email = ""

terraform_sa_name = ""

terraform_state_bucket = ""

terraform_validator_release = "2020-09-24"

terraform_version = "0.12.29"

terraform_version_sha256sum = "872245d9c6302b24dc0d98a1e010aef1e4ef60865a2d1f60102c8ad03e9d5a1d"
