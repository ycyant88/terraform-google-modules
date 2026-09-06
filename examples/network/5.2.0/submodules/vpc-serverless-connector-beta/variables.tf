variable "project_id" {
  description = "Project in which the vpc connector will be deployed."
  type        = string
  default     = null
}

variable "vpc_connectors" {
  description = "List of VPC serverless connectors."
  type        = list(map(string))
  default     = []
}
