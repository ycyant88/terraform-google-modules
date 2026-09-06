variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned"
  type        = string
  default     = ""
}

variable "dataset_labels" {
  description = "Key value pairs in a map for dataset labels"
  type        = map(any)
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

variable "table_labels" {
  description = "Key value pairs in a map for table labels"
  type        = map(any)
  default     = ""
}

variable "tables" {
  description = "A list of maps that includes both table_id and schema in each element, the table(s) will be created on the single dataset"
  type        = list(any)
  default     = ""
}

variable "time_partitioning" {
  description = "Configures time-based partitioning for this table"
  type        = string
  default     = ""
}
