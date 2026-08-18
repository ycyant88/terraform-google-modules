variable "custom_role" {
  description = "The principal's role for the Fleet Scope which is a custom Kubernetes ClusterRole. Either a predefined role or a custom role should be set"
  type        = string
  default     = null
}

variable "fleet_project_id" {
  description = "The project to which the Fleet belongs."
  type        = string
  default     = ""
}

variable "groups" {
  description = "The list of app operator group principals, e.g., people@google.com, principalSet://iam.googleapis.com/locations/global/workforcePools/my-pool/group/people."
  type        = list(string)
  default     = []
}

variable "role" {
  description = "The principal's predefined role for the Fleet Scope (VIEW/EDIT/ADMIN). Either a predefined role or a custom role should be set"
  type        = string
  default     = null
}

variable "scope_id" {
  description = "The scope for which IAM and RBAC role bindings are created."
  type        = string
  default     = ""
}

variable "users" {
  description = "The list of app operator user principals, e.g., person@google.com, principal://iam.googleapis.com/locations/global/workforcePools/my-pool/subject/person, serviceAccount:my-service-account@my-project.iam.gserviceaccount.com."
  type        = list(string)
  default     = []
}
