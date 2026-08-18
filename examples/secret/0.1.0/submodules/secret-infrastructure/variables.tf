variable "application_list" {
  description = "The list of application names that will store secrets"
  type = 
  default = []
}

variable "credentials_file_path" {
  description = "GCP credentials fils"
  type = 
  default = ""
}

variable "env_list" {
  description = "The list of environments for secrets"
  type = 
  default = []
}

variable "project_name" {
  description = "The name of the project this applies to"
  type = 
  default = ""
}
