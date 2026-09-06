variable "admin_disable_polling" {
  description = "Whether to disable polling for Admin API"
  type        = string
  default     = "False"
}

variable "admin_max_calls" {
  description = "Maximum calls that can be made to Admin API"
  type        = string
  default     = "14"
}

variable "admin_period" {
  description = "The period of max calls for the Admin API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "appengine_disable_polling" {
  description = "Whether to disable polling for App Engine API"
  type        = string
  default     = "False"
}

variable "appengine_max_calls" {
  description = "Maximum calls that can be made to App Engine API"
  type        = string
  default     = "18"
}

variable "appengine_period" {
  description = "The period of max calls for the App Engine API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "audit_logging_enabled" {
  description = "Audit Logging scanner enabled."
  type        = string
  default     = "false"
}

variable "audit_logging_violations_should_notify" {
  description = "Notify for Audit logging violations"
  type        = string
  default     = "true"
}

variable "bigquery_acl_violations_should_notify" {
  description = "Notify for BigQuery ACL violations"
  type        = string
  default     = "true"
}

variable "bigquery_disable_polling" {
  description = "Whether to disable polling for Big Query API"
  type        = string
  default     = "False"
}

variable "bigquery_enabled" {
  description = "Big Query scanner enabled."
  type        = string
  default     = "true"
}

variable "bigquery_max_calls" {
  description = "Maximum calls that can be made to Big Query API"
  type        = string
  default     = "160"
}

variable "bigquery_period" {
  description = "The period of max calls for the Big Query API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "blacklist_enabled" {
  description = "Audit Logging scanner enabled."
  type        = string
  default     = "true"
}

variable "blacklist_violations_should_notify" {
  description = "Notify for Blacklist violations"
  type        = string
  default     = "true"
}

variable "bucket_acl_enabled" {
  description = "Bucket ACL scanner enabled."
  type        = string
  default     = "true"
}

variable "bucket_cai_lifecycle_age" {
  description = "GCS CAI lifecycle age value"
  type        = string
  default     = "14"
}

variable "bucket_cai_location" {
  description = "GCS CAI storage bucket location"
  type        = string
  default     = "us-central1"
}

variable "buckets_acl_violations_should_notify" {
  description = "Notify for Buckets ACL violations"
  type        = string
  default     = "true"
}

variable "cai_api_timeout" {
  description = "Timeout in seconds to wait for the exportAssets API to return success."
  type        = string
  default     = "3600"
}

variable "client_access_config" {
  description = "Client instance 'access_config' block"
  type        = map(any)
  default     = {}
}

variable "client_boot_image" {
  description = "GCE Forseti Client role instance size"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "client_instance_metadata" {
  description = "Metadata key/value pairs to make available from within the client instance."
  type        = map(any)
  default     = {}
}

variable "client_private" {
  description = "Private GCE Forseti Client VM (no public IP)"
  type        = string
  default     = "false"
}

variable "client_region" {
  description = "GCE Forseti Client role region size"
  type        = string
  default     = "us-central1"
}

variable "client_ssh_allow_ranges" {
  description = "List of CIDRs that will be allowed ssh access to forseti client"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "client_tags" {
  description = "GCE Forseti Client VM Tags"
  type        = list(any)
  default     = []
}

variable "client_type" {
  description = "GCE Forseti Client role instance size"
  type        = string
  default     = "n1-standard-2"
}

variable "cloudasset_disable_polling" {
  description = "Whether to disable polling for Cloud Asset API"
  type        = string
  default     = "False"
}

variable "cloudasset_max_calls" {
  description = "Maximum calls that can be made to Cloud Asset API"
  type        = string
  default     = "1"
}

variable "cloudasset_period" {
  description = "The period of max calls for the Cloud Asset API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "cloudbilling_disable_polling" {
  description = "Whether to disable polling for Cloud Billing API"
  type        = string
  default     = "False"
}

variable "cloudbilling_max_calls" {
  description = "Maximum calls that can be made to Cloud Billing API"
  type        = string
  default     = "5"
}

variable "cloudbilling_period" {
  description = "The period of max calls for the Cloud Billing API (in seconds)"
  type        = string
  default     = "1.2"
}

variable "cloudsql_acl_enabled" {
  description = "Cloud SQL scanner enabled."
  type        = string
  default     = "true"
}

variable "cloudsql_acl_violations_should_notify" {
  description = "Notify for CloudSQL ACL violations"
  type        = string
  default     = "true"
}

variable "cloudsql_db_name" {
  description = "CloudSQL database name"
  type        = string
  default     = "forseti_security"
}

variable "cloudsql_db_port" {
  description = "CloudSQL database port"
  type        = string
  default     = "3306"
}

variable "cloudsql_proxy_arch" {
  description = "CloudSQL Proxy architecture"
  type        = string
  default     = "linux.amd64"
}

variable "cloudsql_region" {
  description = "CloudSQL region"
  type        = string
  default     = "us-central1"
}

variable "cloudsql_type" {
  description = "CloudSQL Instance size"
  type        = string
  default     = "db-n1-standard-1"
}

variable "composite_root_resources" {
  description = "A list of root resources that Forseti will monitor. This supersedes the root_resource_id when set."
  type        = list(any)
  default     = []
}

variable "compute_disable_polling" {
  description = "Whether to disable polling for Compute API"
  type        = string
  default     = "False"
}

variable "compute_max_calls" {
  description = "Maximum calls that can be made to Compute API"
  type        = string
  default     = "18"
}

variable "compute_period" {
  description = "The period of max calls for the Compute API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "config_validator_enabled" {
  description = "Config Validator scanner enabled."
  type        = string
  default     = "false"
}

variable "config_validator_violations_should_notify" {
  description = "Notify for Config Validator violations."
  type        = string
  default     = "true"
}

variable "container_disable_polling" {
  description = "Whether to disable polling for Container API"
  type        = string
  default     = "False"
}

variable "container_max_calls" {
  description = "Maximum calls that can be made to Container API"
  type        = string
  default     = "9"
}

variable "container_period" {
  description = "The period of max calls for the Container API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "crm_disable_polling" {
  description = "Whether to disable polling for CRM API"
  type        = string
  default     = "False"
}

variable "crm_max_calls" {
  description = "Maximum calls that can be made to CRN API"
  type        = string
  default     = "4"
}

variable "crm_period" {
  description = "The period of max calls for the CRM  API (in seconds)"
  type        = string
  default     = "1.2"
}

variable "cscc_source_id" {
  description = "Source ID for CSCC Beta API"
  type        = string
  default     = ""
}

variable "cscc_violations_enabled" {
  description = "Notify for CSCC violations"
  type        = string
  default     = "false"
}

variable "domain" {
  description = "The domain associated with the GCP Organization ID"
  type        = string
  default     = ""
}

variable "enable_cai_bucket" {
  description = "Create a GCS bucket for CAI exports"
  type        = string
  default     = "true"
}

variable "enable_write" {
  description = "Enabling/Disabling write actions"
  type        = string
  default     = "false"
}

variable "enabled_apis_enabled" {
  description = "Enabled APIs scanner enabled."
  type        = string
  default     = "false"
}

variable "enabled_apis_violations_should_notify" {
  description = "Notify for enabled APIs violations"
  type        = string
  default     = "true"
}

variable "external_project_access_violations_should_notify" {
  description = "Notify for External Project Access violations"
  type        = string
  default     = "true"
}

variable "firewall_rule_enabled" {
  description = "Firewall rule scanner enabled."
  type        = string
  default     = "true"
}

variable "firewall_rule_violations_should_notify" {
  description = "Notify for Firewall rule violations"
  type        = string
  default     = "true"
}

variable "folder_id" {
  description = "GCP Folder that the Forseti project will be deployed into"
  type        = string
  default     = ""
}

variable "forseti_email_recipient" {
  description = "Email address that receives Forseti notifications"
  type        = string
  default     = ""
}

variable "forseti_email_sender" {
  description = "Email address that sends the Forseti notifications"
  type        = string
  default     = ""
}

variable "forseti_home" {
  description = "Forseti installation directory"
  type        = string
  default     = "$USER_HOME/forseti-security"
}

variable "forseti_repo_url" {
  description = "Git repo for the Forseti installation"
  type        = string
  default     = "https://github.com/GoogleCloudPlatform/forseti-security"
}

variable "forseti_run_frequency" {
  description = "Schedule of running the Forseti scans"
  type        = string
  default     = "0 */2 * * *"
}

variable "forseti_version" {
  description = "The version of Forseti to install"
  type        = string
  default     = "v2.17.0"
}

variable "forwarding_rule_enabled" {
  description = "Forwarding rule scanner enabled."
  type        = string
  default     = "false"
}

variable "forwarding_rule_violations_should_notify" {
  description = "Notify for forwarding rule violations"
  type        = string
  default     = "true"
}

variable "group_enabled" {
  description = "Group scanner enabled."
  type        = string
  default     = "true"
}

variable "groups_settings_disable_polling" {
  description = "Whether to disable polling for the G Suite Groups API"
  type        = string
  default     = "False"
}

variable "groups_settings_enabled" {
  description = "Groups settings scanner enabled."
  type        = string
  default     = "true"
}

variable "groups_settings_max_calls" {
  description = "Maximum calls that can be made to the G Suite Groups API"
  type        = string
  default     = "5"
}

variable "groups_settings_period" {
  description = "the period of max calls to the G Suite Groups API"
  type        = string
  default     = "1.1"
}

variable "groups_settings_violations_should_notify" {
  description = "Notify for groups settings violations"
  type        = string
  default     = "true"
}

variable "groups_violations_should_notify" {
  description = "Notify for Groups violations"
  type        = string
  default     = "true"
}

variable "gsuite_admin_email" {
  description = "G-Suite administrator email address to manage your Forseti installation"
  type        = string
  default     = ""
}

variable "iam_disable_polling" {
  description = "Whether to disable polling for IAM API"
  type        = string
  default     = "False"
}

variable "iam_max_calls" {
  description = "Maximum calls that can be made to IAM API"
  type        = string
  default     = "90"
}

variable "iam_period" {
  description = "The period of max calls for the IAM API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "iam_policy_enabled" {
  description = "IAM Policy scanner enabled."
  type        = string
  default     = "true"
}

variable "iam_policy_violations_should_notify" {
  description = "Notify for IAM Policy violations"
  type        = string
  default     = "true"
}

variable "iam_policy_violations_slack_webhook" {
  description = "Slack webhook for IAM Policy violations"
  type        = string
  default     = ""
}

variable "iap_enabled" {
  description = "IAP scanner enabled."
  type        = string
  default     = "true"
}

variable "iap_violations_should_notify" {
  description = "Notify for IAP violations"
  type        = string
  default     = "true"
}

variable "instance_network_interface_enabled" {
  description = "Instance network interface scanner enabled."
  type        = string
  default     = "false"
}

variable "instance_network_interface_violations_should_notify" {
  description = "Notify for instance network interface violations"
  type        = string
  default     = "true"
}

variable "inventory_email_summary_enabled" {
  description = "Email summary for inventory enabled"
  type        = string
  default     = "true"
}

variable "inventory_gcs_summary_enabled" {
  description = "GCS summary for inventory enabled"
  type        = string
  default     = "true"
}

variable "inventory_retention_days" {
  description = "Number of days to retain inventory data."
  type        = string
  default     = "-1"
}

variable "ke_scanner_enabled" {
  description = "KE scanner enabled."
  type        = string
  default     = "false"
}

variable "ke_version_scanner_enabled" {
  description = "KE version scanner enabled."
  type        = string
  default     = "true"
}

variable "ke_version_violations_should_notify" {
  description = "Notify for KE version violations"
  type        = string
  default     = "true"
}

variable "ke_violations_should_notify" {
  description = "Notify for KE violations"
  type        = string
  default     = "true"
}

variable "kms_scanner_enabled" {
  description = "KMS scanner enabled."
  type        = string
  default     = "true"
}

variable "kms_violations_should_notify" {
  description = "Notify for KMS violations"
  type        = string
  default     = "true"
}

variable "kms_violations_slack_webhook" {
  description = "Slack webhook for KMS violations"
  type        = string
  default     = ""
}

variable "lien_enabled" {
  description = "Lien scanner enabled."
  type        = string
  default     = "true"
}

variable "lien_violations_should_notify" {
  description = "Notify for lien violations"
  type        = string
  default     = "true"
}

variable "location_enabled" {
  description = "Location scanner enabled."
  type        = string
  default     = "true"
}

variable "location_violations_should_notify" {
  description = "Notify for location violations"
  type        = string
  default     = "true"
}

variable "log_sink_enabled" {
  description = "Log sink scanner enabled."
  type        = string
  default     = "true"
}

variable "log_sink_violations_should_notify" {
  description = "Notify for log sink violations"
  type        = string
  default     = "true"
}

variable "logging_disable_polling" {
  description = "Whether to disable polling for Logging API"
  type        = string
  default     = "False"
}

variable "logging_max_calls" {
  description = "Maximum calls that can be made to Logging API"
  type        = string
  default     = "9"
}

variable "logging_period" {
  description = "The period of max calls for the Logging API (in seconds)"
  type        = string
  default     = "1.0"
}

variable "network" {
  description = "The VPC where the Forseti client and server will be created"
  type        = string
  default     = "default"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti client and server will be created"
  type        = string
  default     = ""
}

variable "org_id" {
  description = "GCP Organization ID that Forseti will have purview over"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "resource_enabled" {
  description = "Resource scanner enabled."
  type        = string
  default     = "true"
}

variable "resource_violations_should_notify" {
  description = "Notify for resource violations"
  type        = string
  default     = "true"
}

variable "securitycenter_disable_polling" {
  description = "Whether to disable polling for Security Center API"
  type        = string
  default     = "False"
}

variable "securitycenter_max_calls" {
  description = "Maximum calls that can be made to Security Center API"
  type        = string
  default     = "1"
}

variable "securitycenter_period" {
  description = "The period of max calls for the Security Center API (in seconds)"
  type        = string
  default     = "1.1"
}

variable "sendgrid_api_key" {
  description = "Sendgrid.com API key to enable email notifications"
  type        = string
  default     = ""
}

variable "server_access_config" {
  description = "Server instance 'access_config' block"
  type        = map(any)
  default     = {}
}

variable "server_boot_image" {
  description = "GCE instance image that is being used, currently Ubuntu only support is available"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "server_grpc_allow_ranges" {
  description = "List of CIDRs that will be allowed gRPC access to forseti server"
  type        = list(any)
  default     = ["10.128.0.0/9"]
}

variable "server_instance_metadata" {
  description = "Metadata key/value pairs to make available from within the server instance."
  type        = map(any)
  default     = {}
}

variable "server_private" {
  description = "Private GCE Forseti Server VM (no public IP)"
  type        = string
  default     = "false"
}

variable "server_region" {
  description = "GCP region where Forseti will be deployed"
  type        = string
  default     = "us-central1"
}

variable "server_ssh_allow_ranges" {
  description = "List of CIDRs that will be allowed ssh access to forseti server"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "server_tags" {
  description = "GCE Forseti Server VM Tags"
  type        = list(any)
  default     = []
}

variable "server_type" {
  description = "GCE Forseti Server role instance size"
  type        = string
  default     = "n1-standard-2"
}

variable "service_account_key_enabled" {
  description = "Service account key scanner enabled."
  type        = string
  default     = "true"
}

variable "service_account_key_violations_should_notify" {
  description = "Notify for service account key violations"
  type        = string
  default     = "true"
}

variable "servicemanagement_disable_polling" {
  description = "Whether to disable polling for Service Management API"
  type        = string
  default     = "False"
}

variable "servicemanagement_max_calls" {
  description = "Maximum calls that can be made to Service Management API"
  type        = string
  default     = "2"
}

variable "servicemanagement_period" {
  description = "The period of max calls for the Service Management API (in seconds)"
  type        = string
  default     = "1.1"
}

variable "sqladmin_disable_polling" {
  description = "Whether to disable polling for SQL Admin API"
  type        = string
  default     = "False"
}

variable "sqladmin_max_calls" {
  description = "Maximum calls that can be made to SQL Admin API"
  type        = string
  default     = "1"
}

variable "sqladmin_period" {
  description = "The period of max calls for the SQL Admin API (in seconds)"
  type        = string
  default     = "1.1"
}

variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  type        = string
  default     = "us-central1"
}

variable "storage_disable_polling" {
  description = "Whether to disable polling for Storage API"
  type        = string
  default     = "False"
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti client and server will be created"
  type        = string
  default     = "default"
}
