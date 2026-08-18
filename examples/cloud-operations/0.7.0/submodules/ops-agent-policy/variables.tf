variable "agents_rule" {
  description = "Whether to install or uninstall the agent, and which version to install."
  type        = object({ package_state : string, version : string })
  default     = { "package_state" : "installed", "version" : "latest" }
}

variable "assignment_id" {
  description = "Resource name. Unique among policy assignments in the given zone"
  type        = string
  default     = ""
}

variable "instance_filter" {
  description = "Filter to select VMs. Structure is documented below here: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/os_config_os_policy_assignment."
  type = object({
    all : optional(bool),
    // excludes a VM if it contains all label-value pairs for some element in the list
    exclusion_labels : optional(list(object({
      labels : map(string)
    })), []),
    // includes a VM if it contains all label-value pairs for some element in the list
    inclusion_labels : optional(list(object({
      labels : map(string)
    })), []),
    // includes a VM if its inventory data matches at least one of the following inventories
    inventories : optional(list(object({
      os_short_name : string,
      os_version : string
    })), []),
  })
  default = ""
}

variable "project" {
  description = "The ID of the project in which to provision resources. If not present, uses the provider ID"
  type        = string
  default     = null
}

variable "zone" {
  description = "The location to which policy assignments are applied to."
  type        = string
  default     = ""
}
