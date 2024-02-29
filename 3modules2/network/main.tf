resource "google_compute_network" "mynetwork" {
    project = var.project
    name = var.network_name
    auto_create_subnetworks = "true"
}
# resource "google_compute_firewall" "default" {
# #All necessary parameters defined
# }