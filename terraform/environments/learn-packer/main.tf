resource "google_compute_instance" "default" {
  name         = "test-instance"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "test-image-${var.image_tag}"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}

resource "google_compute_firewall" "default" {
  name    = "allow-ssh-10024"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["10024"]
  }
}
