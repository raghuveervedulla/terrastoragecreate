output "bucket_name" {
  value = google_storage_bucket.example_bucket.name
}

output "file_url" {
  value = "https://storage.googleapis.com/${google_storage_bucket.example_bucket.name}/${google_storage_bucket_object.example_file.name}"
}

