resource "google_storage_bucket" "data_bucket" {
  name          = "dataops-478900-data-bucket"
  location      = "US"
  force_destroy = true
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = "analytics_dataset"
  location   = "US"
}

resource "google_compute_instance" "vm_instance" {
  project      = var.project_id
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  
  network_interface {
    network = "default"
    access_config {}
  }
}
