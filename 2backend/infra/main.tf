provider "google" {
  project     = var.project
  region      = "Region"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "${var.project}"
  location    = "US" # Replace with EU for Europe region
  uniform_bucket_level_access = true
}
terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}