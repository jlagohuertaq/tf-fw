provider "google" {
  project = ""
  region        = "us-central1"
}

terraform {
  backend "gcs" {
    bucket  = ""
    prefix  = ""
  }
}