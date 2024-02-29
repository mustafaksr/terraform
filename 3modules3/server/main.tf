 resource google_compute_instance "vm_instance" {

    count = var.vm_count
    project = var.project
    name         = "${var.instance_name}-${count.index + 1}"
    zone         = "${var.instance_zone}"
    machine_type = "${var.instance_type}"
    boot_disk {
    initialize_params {
    image = "debian-cloud/debian-11"
    }
    }
    network_interface {
    network = "default"
    # access_config {
    # # Allocate a one-to-one NAT IP to the instance
    # nat_ip = google_compute_address.vm_static_ip.address
    # }
    }
}
# resource "google_compute_firewall" "default" {
# #All necessary parameters defined
# }