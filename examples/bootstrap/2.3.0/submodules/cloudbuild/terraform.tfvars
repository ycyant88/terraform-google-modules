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

terraform_apply_branches = ["master"]

terraform_sa_email = ""

terraform_sa_name = ""

terraform_state_bucket = ""

terraform_validator_release = "2021-03-22"

terraform_version = "0.13.6"

terraform_version_sha256sum = "55f2db00b05675026be9c898bdd3e8230ff0c5c78dd12d743ca38032092abfc9"
