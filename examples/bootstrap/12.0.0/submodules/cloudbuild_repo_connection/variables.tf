variable "cloud_build_repositories" {
  description = "Cloud Build repositories configuration:\n  - repository_name: The name of the repository to be used in Cloud Build.\n  - repository_url: The HTTPS clone URL for the repository. This URL must end with '.git' and be a valid HTTPS URL.\n\nEach entry in this map must contain both repository_name and repository_url to properly integrate with the Cloud Build service.\n"
  type = map(object({
    repository_name = string,
    repository_url  = string,
  }))
  default = ""
}

variable "cloudbuild_connection_name" {
  description = "Cloudbuild Connection Name."
  type        = string
  default     = "generic-cloudbuild-connection"
}

variable "connection_config" {
  description = "Connection configuration options:\n  - connection_type: Specifies the type of connection being used. Supported types are 'GITHUBv2' and 'GITLABv2'.\n  - github_secret_id: (Optional) The secret ID for GitHub credentials.\n  - github_app_id_secret_id: (Optional) The secret ID for the application ID for a GitHub App used for authentication. For app installation, follow this link: https://github.com/apps/google-cloud-build\n  - gitlab_read_authorizer_credential_secret_id: (Optional) The secret ID for the GitLab read authorizer credential.\n  - gitlab_authorizer_credential_secret_id: (Optional) The secret ID for the GitLab authorizer credential.\n  - gitlab_webhook_secret_id: (Optional) The secret ID for the GitLab WebHook.\n  - gitlab_enterprise_host_uri: (Optional) The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.\n  - gitlab_enterprise_service_directory: (Optional) Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.\n  - gitlab_enterprise_ca_certificate: (Optional) SSL certificate to use for requests to GitLab Enterprise.\n"
  type = object({
    connection_type                             = string
    github_secret_id                            = optional(string)
    github_app_id_secret_id                     = optional(string)
    gitlab_read_authorizer_credential_secret_id = optional(string)
    gitlab_authorizer_credential_secret_id      = optional(string)
    gitlab_webhook_secret_id                    = optional(string)
    gitlab_enterprise_host_uri                  = optional(string)
    gitlab_enterprise_service_directory         = optional(string)
    gitlab_enterprise_ca_certificate            = optional(string)
  })
  default = ""
}

variable "location" {
  description = "Resources location."
  type        = string
  default     = "us-central1"
}

variable "project_id" {
  description = "The project id to create the secret and assign cloudbuild service account permissions."
  type        = string
  default     = ""
}
