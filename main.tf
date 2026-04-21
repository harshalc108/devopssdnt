provider "google" {
    project = "project-b42b543c-6fb1-4fe7-a23"
    region  = "us-central1"
  
}

resource "google_compute_instance" "sanjana" {
  name         = "sanjana-vm-server"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Ephemeral public IP
    }
  }

  tags = ["http-server", "https-server"]
}
