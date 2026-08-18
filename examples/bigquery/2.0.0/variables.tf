variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned"
  type        = string
  default     = ""
}

variable "dataset_labels" {
  description = "Key value pairs in a map for dataset labels"
  type        = map(string)
  default     = ""
}

variable "dataset_name" {
  description = "Friendly name for the dataset being provisioned"
  type        = string
  default     = ""
}

variable "description" {
  description = "Dataset description"
  type        = string
  default     = ""
}

variable "expiration" {
  description = "TTL of tables using the dataset in MS"
  type        = string
  default     = ""
}

variable "location" {
  description = "The regional location for the dataset only US and EU are allowed in module"
  type        = string
  default     = "US"
}

variable "project_id" {
  description = "Project wheree the dataset and table are created"
  type        = string
  default     = ""
}

variable "tables" {
  description = "A list of objects which include table_id, schema, and labels."
  type = list(object({
    table_id = string,
    schema   = string,
    labels   = map(string),
  }))
  default = []
}

variable "time_partitioning" {
  description = "Configures time-based partitioning for this table"
  type        = string
  default     = ""
}
