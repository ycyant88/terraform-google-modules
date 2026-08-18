variable "application_name" {
  description = "The application to fetch secrets for"
  type = 
  default = ""
}

variable "credentials_file_path" {
  description = "The path to the GCP credentials"
  type = 
  default = ""
}

variable "env" {
  description = "The environment to fetch secrets for"
  type = 
  default = ""
}

variable "secret" {
  description = "The name of the secret to fetch"
  type = 
  default = ""
}

variable "shared" {
  description = "Will we fetch the secret from the shared bucket instead of an application-specific bucket?"
  type = 
  default = "false"
}
