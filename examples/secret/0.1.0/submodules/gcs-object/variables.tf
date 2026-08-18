variable "bucket" {
  description = "The bucket to fetch the object from"
  type = 
  default = ""
}

variable "duration" {
  description = "The duration of the signed URL (defaults to 1m)"
  type = 
  default = "1m"
}

variable "path" {
  description = "The path to the desired object within the bucket"
  type = 
  default = ""
}
