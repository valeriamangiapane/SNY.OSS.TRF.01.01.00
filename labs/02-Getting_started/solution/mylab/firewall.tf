resource "google_compute_firewall" "allow-internal" {
  name    = "valeria-fw-allow-internal-${random_id.random_id.hex}"
  network = "${google_compute_network.valeriavpc.name}"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "${var.PUBLIC_SUBNET_CDIR}",
    "${var.PRIVATE_SUBNET_CDIR}"
  ]
}
resource "google_compute_firewall" "allow-http-ingress" {
  name    = "vale-fw-http-ingress-${random_id.random_id.hex}"
  network = "${google_compute_network.valeriavpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"] 
}


resource "google_compute_firewall" "allow-ssh-ingress" {
  name    = "vale-fw-ssh-ingress-${random_id.random_id.hex}"
  network = "${google_compute_network.valeriavpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"] 
}

