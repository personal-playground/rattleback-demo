resource "google_storage_bucket" "uut" {
  name                        = var.bucket_name
  location                    = var.bucket_location
  force_destroy               = true
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}
resource "google_storage_bucket_iam_member" "uut" {
  bucket = google_storage_bucket.uut.name
  role   = var.role
  member = "allAuthenticatedUsers"
}