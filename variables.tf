variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
  default     = "thematic-scene-446706-j3"
}

variable "region" {
  description = "Region for the storage bucket"
  type        = string
  default     = "us-central1" # Set the default location to Mumbai
}

variable "bucket_name" {
  description = "Name of the storage bucket"
  type        = string
  default     = "example2807"
}

variable "file_name" {
  description = "Name of the file in the storage bucket"
  type        = string
  default     = "example.txt"
}
