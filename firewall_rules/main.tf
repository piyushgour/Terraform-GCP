resource "google_compute_firewall" "default" {
  name    = var.firewall_rule_name
  network = var.network_name
  direction = var.direction
  source_ranges = [ "${var.source_network_list}"]

  allow {
    protocol = var.protocol
    ports    = ["${var.ports}"]
  }  
}
