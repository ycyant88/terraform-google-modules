variable "decrypters" {
  description = "List of comma-separated owners for each key declared in set_decrypters_for."
  type        = list(string)
  default     = []
}

variable "encrypters" {
  description = "List of comma-separated owners for each key declared in set_encrypters_for."
  type        = list(string)
  default     = []
}

variable "key_rotation_period" {
  description = ""
  type        = string
  default     = "100000s"
}

variable "keyring" {
  description = "Keyring name."
  type        = string
  default     = ""
}

variable "keys" {
  description = "Key names."
  type        = list(string)
  default     = []
}

variable "location" {
  description = "Location for the keyring."
  type        = string
  default     = ""
}

variable "owners" {
  description = "List of comma-separated owners for each key declared in set_owners_for."
  type        = list(string)
  default     = []
}

variable "project_id" {
  description = "Project id where the keyring will be created."
  type        = string
  default     = ""
}

variable "set_decrypters_for" {
  description = "Name of keys for which decrypters will be set."
  type        = list(string)
  default     = []
}

variable "set_encrypters_for" {
  description = "Name of keys for which encrypters will be set."
  type        = list(string)
  default     = []
}

variable "set_owners_for" {
  description = "Name of keys for which owners will be set."
  type        = list(string)
  default     = []
}
