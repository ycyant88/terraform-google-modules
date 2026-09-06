variable "client_boot_image" {
  description = "GCE Forseti Client role instance size"
  type = 
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "client_region" {
  description = "GCE Forseti Client role region size"
  type = 
  default = "us-central1"
}

variable "client_type" {
  description = "GCE Forseti Client role instance size"
  type = 
  default = "n1-standard-2"
}

variable "forseti_home" {
  description = "Forseti installation directory"
  type = 
  default = "$USER_HOME/forseti-security"
}

variable "forseti_repo_url" {
  description = "Git repo for the Forseti installation"
  type = 
  default = "https://github.com/GoogleCloudPlatform/forseti-security"
}

variable "forseti_version" {
  description = "The version of Forseti to install"
  type = 
  default = "v2.10.0"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti client and server will be created"
  type = 
  default = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type = 
  default = ""
}

variable "server_address" {
  description = "The Forseti server address"
  type = 
  default = ""
}

variable "services" {
  description = "An artificial dependency to bypass #10462"
  type = 
  default = [""]
}

variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  type = 
  default = "us-central1"
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti client and server will be created"
  type = 
  default = "default"
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type = 
  default = ""
}
