variable "project_id" {
  description = "Project in which the vpc connector will be deployed."
  type        = string
  default     = ""
}

variable "vpc_connectors" {
  description = "List of VPC serverless connectors."
  type = list(object({
    name            = string,
    region          = string,
    network         = optional(string, null),
    subnet_name     = optional(string, null),
    ip_cidr_range   = optional(string, null),
    host_project_id = optional(string, null),
    machine_type    = optional(string, null),
    min_instances   = optional(number, null),
    max_instances   = optional(number, null),
    max_throughput  = optional(number, null)
  }))
  default = []
}
