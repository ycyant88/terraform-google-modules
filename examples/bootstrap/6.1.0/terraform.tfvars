activate_apis = ["serviceusage.googleapis.com", "servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com", "storage-api.googleapis.com", "monitoring.googleapis.com"]

billing_account = ""

default_region = "us-central1"

encrypt_gcs_bucket_tfstate = false

folder_id = ""

force_destroy = false

grant_billing_user = true

group_billing_admins = ""

group_org_admins = ""

key_protection_level = "SOFTWARE"

key_rotation_period = null

kms_prevent_destroy = true

org_admins_org_iam_permissions = ["roles/billing.user", "roles/resourcemanager.organizationAdmin"]

org_id = ""

org_project_creators = []

parent_folder = ""

project_id = ""

project_labels = {}

project_prefix = "cft"

random_suffix = true

sa_enable_impersonation = false

sa_org_iam_permissions = ["roles/billing.user", "roles/compute.networkAdmin", "roles/compute.xpnAdmin", "roles/iam.securityAdmin", "roles/iam.serviceAccountAdmin", "roles/logging.configWriter", "roles/orgpolicy.policyAdmin", "roles/resourcemanager.folderAdmin", "roles/resourcemanager.organizationViewer"]

state_bucket_name = ""

storage_bucket_labels = {}

tf_service_account_id = "org-terraform"

tf_service_account_name = "CFT Organization Terraform Account"
