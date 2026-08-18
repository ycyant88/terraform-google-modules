activate_apis = ["servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery-json.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com", "storage-api.googleapis.com"]

billing_account = ""

default_region = "us-central1"

folder_id = ""

group_billing_admins = ""

group_org_admins = ""

org_admins_org_iam_permissions = ["roles/billing.user", "roles/resourcemanager.organizationAdmin"]

org_id = ""

org_project_creators = []

project_labels = {}

project_prefix = "cft"

sa_enable_impersonation = false

sa_org_iam_permissions = ["roles/billing.user", "roles/compute.networkAdmin", "roles/compute.xpnAdmin", "roles/iam.securityAdmin", "roles/iam.serviceAccountAdmin", "roles/logging.configWriter", "roles/orgpolicy.policyAdmin", "roles/resourcemanager.folderCreator", "roles/resourcemanager.folderViewer", "roles/resourcemanager.organizationViewer"]

storage_bucket_labels = {}
