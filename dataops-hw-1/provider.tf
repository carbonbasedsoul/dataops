terraform {
  backend "gcs" {
    bucket = "dataops-478900-terraform-state"
    prefix = "terraform/state"
  }
}

provider "google" {
  region  = var.region
  zone    = var.zone
  project = var.project_id
}
