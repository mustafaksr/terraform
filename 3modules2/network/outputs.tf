output "network_output" {

  value = google_compute_network.mynetwork.self_link
  description = "created network self link"
}