variable "composer_env_name" {
  description = "Name of the Cloud Composer Environment."
  type        = string
  default     = ""
}

variable "extra" {
  description = "The optional exta field of the connection. If this is not a string it will be encoded as json which is useful for things like oauth tokens and gcpcloudsql"
  type        = any
  default     = null
}

variable "host" {
  description = "The optional host field of the connection"
  type        = string
  default     = null
}

variable "id" {
  description = "The ID of the connection within Airflow"
  type        = string
  default     = ""
}

variable "login" {
  description = "The optional login field of the connection"
  type        = string
  default     = null
}

variable "password" {
  description = "The optional password field of the connection"
  type        = string
  default     = null
}

variable "port" {
  description = "The optional port field of the connection"
  type        = string
  default     = null
}

variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "schema" {
  description = "The optional schema field of the connection"
  type        = string
  default     = null
}

variable "type" {
  description = "The optional type field of the connection"
  type        = string
  default     = null
}

variable "uri" {
  description = "The optional uri field of the connection"
  type        = string
  default     = null
}
