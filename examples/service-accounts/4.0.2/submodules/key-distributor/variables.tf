variable "create_wrapper_script" {
  description = "Whether to create the get-key wrapper script"
  type        = bool
  default     = true
}

variable "folder_ids" {
  description = "Folder IDs where the Cloud Function will have access to create Service Account keys."
  type        = list(any)
  default     = []
}

variable "function_members" {
  description = "List of IAM members (users, groups, etc) with the invoker permission on the CLoud Function"
  type        = list(string)
  default     = ""
}

variable "function_name" {
  description = "Name of the Cloud Function"
  type        = string
  default     = "key-distributor"
}

variable "org_id" {
  description = "Organization ID where the Cloud Function will have access to create Service Account keys."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project Id for the Cloud Function. Also if folder_ids and project_ids are empty, the Cloud Function will be granted access to create keys in this project by default."
  type        = string
  default     = ""
}

variable "project_ids" {
  description = "Project IDs where the Cloud Function will have access to create Service Account keys."
  type        = list(any)
  default     = []
}

variable "public_key_file" {
  description = "Path of the ascii armored gpg public key. Create by running gpg --export --armor <key-id> > pubkey.asc"
  type        = string
  default     = "pubkey.asc"
}

variable "region" {
  description = "The region where the Cloud Function will run"
  type        = string
  default     = "us-central1"
}
