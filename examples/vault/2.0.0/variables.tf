variable "kms_crypto_key" {
  description = "The name of the Cloud KMS Key used for encrypting initial TLS certificates and\nfor configuring Vault auto-unseal.\n"
  type        = string
  default     = "vault-init"
}

variable "kms_keyring" {
  description = "Name of the Cloud KMS KeyRing for asset encryption.\n"
  type        = string
  default     = ""
}

variable "kms_protection_level" {
  description = "The protection level to use for the KMS crypto key.\n"
  type        = string
  default     = "software"
}

variable "network_subnet_cidr_range" {
  description = "CIDR block range for the subnet.\n"
  type        = string
  default     = "10.127.0.0/20"
}

variable "project_id" {
  description = "ID of the project in which to create resources and add IAM bindings.\n"
  type        = string
  default     = ""
}

variable "project_services" {
  description = "List of services to enable on the project where Vault will run. These services\nare required in order for this Vault setup to function.\n\nTo disable, set to the empty list []. You may want to disable this if the\nservices have already been enabled and the current user does not have permission\nto enable new services.\n"
  type        = list(any)
  default     = ["cloudkms.googleapis.com", "cloudresourcemanager.googleapis.com", "compute.googleapis.com", "iam.googleapis.com", "logging.googleapis.com", "monitoring.googleapis.com"]
}

variable "region" {
  description = "Region in which to create resources.\n"
  type        = string
  default     = "us-east4"
}

variable "service_account_name" {
  description = "Name of the Vault service account.\n"
  type        = string
  default     = "vault-admin"
}

variable "service_account_project_additional_iam_roles" {
  description = "List of custom IAM roles to add to the project.\n"
  type        = list(any)
  default     = []
}

variable "service_account_project_iam_roles" {
  description = "List of IAM roles for the Vault admin service account to function. If you need\nto add additional roles, update service_account_project_additional_iam_roles\ninstead.\n"
  type        = list(any)
  default     = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer"]
}

variable "service_account_storage_bucket_iam_roles" {
  description = "List of IAM roles for the Vault admin service account to have on the storage\nbucket.\n"
  type        = list(any)
  default     = ["roles/storage.legacyBucketReader", "roles/storage.objectAdmin"]
}

variable "ssh_allowed_cidrs" {
  description = "List of CIDR blocks to allow access to SSH into nodes. To disable, set to the\nempty list [].\n"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "storage_bucket_force_destroy" {
  description = "Set to true to force deletion of backend bucket on terraform destroy.\n"
  type        = string
  default     = false
}

variable "storage_bucket_location" {
  description = "Location for the multi-regional Google Cloud Storage bucket in which Vault data\nwill be stored. Valid values include:\n\n  - asia\n  - eu\n  - us\n"
  type        = string
  default     = "us"
}

variable "storage_bucket_name" {
  description = "Name of the Google Cloud Storage bucket for the Vault backend storage. This must\nbe globally unique across of of GCP. If left as the empty string, this will\ndefault to: \"<project-id>-vault-data\".\n"
  type        = string
  default     = ""
}

variable "tls_ca_subject" {
  description = "The subject block for the root CA certificate."
  type        = map(any)
  default     = { "common_name" : "Example Inc. Root", "country" : "US", "locality" : "The Intranet", "organization" : "Example, Inc", "organizational_unit" : "Department of Certificate Authority", "postal_code" : "95559-1227", "province" : "CA", "street_address" : ["123 Example Street"] }
}

variable "tls_cn" {
  description = "The TLS Common Name for the TLS certificates"
  type        = string
  default     = "vault.example.net"
}

variable "tls_dns_names" {
  description = "List of DNS names added to the Vault server self-signed certificate"
  type        = list(any)
  default     = ["vault.example.net"]
}

variable "tls_ips" {
  description = "List of IP addresses added to the Vault server self-signed certificate"
  type        = list(any)
  default     = ["127.0.0.1"]
}

variable "tls_ou" {
  description = "The TLS Organizational Unit for the TLS certificate"
  type        = string
  default     = "IT Security Operations"
}

variable "vault_allowed_cidrs" {
  description = "List of CIDR blocks to allow access to the Vault nodes. Since the load balancer\nis a pass-through load balancer, this must also include all IPs from which you\nwill access Vault. The default is unrestricted (any IP address can access\nVault). It is recommended that you reduce this to a smaller list.\n\nTo disable, set to the empty list []. Even if disabled, internal rules will\nstill allow the health checker to probe the nodes for health.\n"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "vault_args" {
  description = "Additional command line arguments passed to Vault server/\n"
  type        = string
  default     = ""
}

variable "vault_instance_labels" {
  description = "Labels to apply to the Vault instances.\n"
  type        = map(any)
  default     = {}
}

variable "vault_instance_metadata" {
  description = "Additional metadata to add to the Vault instances.\n"
  type        = map(any)
  default     = {}
}

variable "vault_instance_tags" {
  description = "Additional tags to apply to the instances. Note \"allow-ssh\" and \"allow-vault\"\nwill be present on all instances.\n"
  type        = list(any)
  default     = []
}

variable "vault_log_level" {
  description = "Log level to run Vault in. See the Vault documentation for valid values.\n"
  type        = string
  default     = "warn"
}

variable "vault_machine_type" {
  description = "Machine type to use for Vault instances.\n"
  type        = string
  default     = "n1-standard-1"
}

variable "vault_max_num_servers" {
  description = "Maximum number of Vault server nodes to run at one time. The group will not\nautoscale beyond this number.\n"
  type        = string
  default     = "7"
}

variable "vault_min_num_servers" {
  description = "Minimum number of Vault server nodes in the autoscaling group. The group will\nnot have less than this number of nodes.\n"
  type        = string
  default     = "1"
}

variable "vault_port" {
  description = "Numeric port on which to run and expose Vault. This should be a high-numbered\nport, since Vault does not run as a root user and therefore cannot bind to\nprivledged ports like 80 or 443. The default is 8200, the standard Vault port.\n"
  type        = string
  default     = "8200"
}

variable "vault_proxy_port" {
  description = "Port to expose Vault's health status endpoint on over HTTP on /. This is\nrequired for the health checks to verify Vault's status. Only the health status\nendpoint is exposed, and it is only accessible from Google's load balancer\naddresses.\n"
  type        = string
  default     = "58200"
}

variable "vault_tls_disable_client_certs" {
  description = "Use and expect client certificates. You may want to disable this if users will\nnot be authenticating to Vault with client certificates.\n"
  type        = string
  default     = false
}

variable "vault_ui_enabled" {
  description = "Controls whether the Vault UI is enabled and accessible.\n"
  type        = string
  default     = true
}

variable "vault_version" {
  description = "Version of vault to install. This version must be 1.0+ and must be published on\nthe HashiCorp releases service.\n"
  type        = string
  default     = "1.0.3"
}
