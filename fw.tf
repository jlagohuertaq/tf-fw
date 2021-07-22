resource "google_compute_firewall" "fw1" {
  name    = "test-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  source_tags = ["web"]
}

resource "google_compute_firewall" "fw2" {
  name    = "test-firewall-2"
  network = "default"

  allow {
    protocol = "icmp"
  }

  source_tags = ["web"]
}

resource "google_compute_firewall" "fw2" {
  name    = "test-firewall-2"
  network = "default"

  allow {
    protocol = "icmp"
  }

  source_tags = ["web"]
}

resource "google_compute_firewall" "disabled" {
  allow {
    ports    = ["22", "3389"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  disabled      = true
  name          = "disabled-rule"
  network       = "default"
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "test" {
  allow {
    protocol = "all"
  }
  direction     = "INGRESS"
  name          = "test-fw"
  priority      = 1000
  source_ranges = ["192.168.2.0/24"]
}