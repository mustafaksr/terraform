resource "google_storage_bucket" "storage-bucket" {
  name          = "tf-bucket-standard"
  location      = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "storage-bucket-example2" {
  name          = "tf-bucket-standard"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "example-variable" {
  name          = "tf-bucket-standard"
  location      = "${var.bucket-loc}"
  force_destroy = true
  uniform_bucket_level_access = true
}


