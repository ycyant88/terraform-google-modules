activate_apis = ["serviceusage.googleapis.com", "servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com", "storage-api.googleapis.com"]

billing_account = ""

cloud_source_repos = ["gcp-org", "gcp-networks", "gcp-projects"]

cloudbuild_apply_filename = "cloudbuild-tf-apply.yaml"

cloudbuild_plan_filename = "cloudbuild-tf-plan.yaml"

create_cloud_source_repos = true

default_region = "us-central1"

folder_id = ""

gar_repo_name = ""

group_org_admins = ""

org_id = ""

project_id = ""

project_labels = {}

project_prefix = "cft"

random_suffix = true

sa_enable_impersonation = false

storage_bucket_labels = {}

terraform_apply_branches = ["main"]

terraform_sa_email = ""

terraform_sa_name = ""

terraform_state_bucket = ""

terraform_validator_release = "v0.6.0"

terraform_version = "1.0.2"

terraform_version_sha256sum = "7329f887cc5a5bda4bedaec59c439a4af7ea0465f83e3c1b0f4d04951e1181f4"
