provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a Storage Bucket
resource "google_storage_bucket" "example_bucket" {
  name                        = var.bucket_name
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
  versioning {
    enabled = false
  }
}

# Grant Public Access to the Bucket
resource "google_storage_bucket_iam_binding" "public_access" {
  bucket = google_storage_bucket.example_bucket.name
  role   = "roles/storage.objectViewer"

  members = [
    "allUsers"
  ]
}

# Upload a File to the Bucket
resource "google_storage_bucket_object" "example_file" {
  name   = var.file_name
  bucket = google_storage_bucket.example_bucket.name
  source = "files/example.txt"
}
