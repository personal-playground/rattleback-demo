resource "google_storage_bucket" "uut" {
  name                        = var.bucket_name
  location                    = var.bucket_location
  force_destroy               = true
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}