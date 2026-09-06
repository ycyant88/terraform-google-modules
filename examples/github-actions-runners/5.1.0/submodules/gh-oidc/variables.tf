variable "allowed_audiences" {
  description = "Workload Identity Pool Provider allowed audiences."
  type        = list(string)
  default     = []
}

variable "attribute_condition" {
  description = "Workload Identity Pool Provider attribute condition expression. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_condition)"
  type        = string
  default     = null
}

variable "attribute_mapping" {
  description = "Workload Identity Pool Provider attribute mapping. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping)"
  type        = map(any)
  default     = { "attribute.actor" : "assertion.actor", "attribute.aud" : "assertion.aud", "attribute.repository" : "assertion.repository", "google.subject" : "assertion.sub" }
}

variable "issuer_uri" {
  description = "Workload Identity Pool Issuer URL"
  type        = string
  default     = "https://token.actions.githubusercontent.com"
}

variable "pool_description" {
  description = "Workload Identity Pool description"
  type        = string
  default     = "Workload Identity Pool managed by Terraform"
}

variable "pool_display_name" {
  description = "Workload Identity Pool display name"
  type        = string
  default     = null
}

variable "pool_id" {
  description = "Workload Identity Pool ID"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project id to create Workload Identity Pool"
  type        = string
  default     = ""
}

variable "provider_description" {
  description = "Workload Identity Pool Provider description"
  type        = string
  default     = "Workload Identity Pool Provider managed by Terraform"
}

variable "provider_display_name" {
  description = "Workload Identity Pool Provider display name"
  type        = string
  default     = null
}

variable "provider_id" {
  description = "Workload Identity Pool Provider id"
  type        = string
  default     = ""
}

variable "sa_mapping" {
  description = "Service Account resource names and corresponding WIF provider attributes. If attribute is set to * all identities in the pool are granted access to SAs."
  type = map(object({
    sa_name   = string
    attribute = string
  }))
  default = {}
}
