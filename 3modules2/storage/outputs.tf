output "storage_output" {

  value = google_storage_bucket.bucket.self_link
  description = "google cloud storage self link"
}