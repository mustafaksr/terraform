 resource "google_compute_address" "vm_static_ip" {
  name = "terraform-static-ip"
}

#### COUNT #### 
 resource google_compute_instance "vm_instance" {
  count =3
# name         = "${var.instance_name}"
name         = "dev_VM${count.index + 1}"
zone         = "${var.instance_zone}"
machine_type = "${var.instance_type}"
boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      }
  }
 network_interface {
    network = "default"
    access_config {
      # Allocate a one-to-one NAT IP to the instance
      nat_ip = google_compute_address.vm_static_ip.address
    }
  }
}
#### FOR_EACH #### 

resource google_compute_instance "vm_instance2" {
# name         = "${var.instance_name}"
for_each = toset( ["us-central1-a", "asia-east1-b", "europe-west4-a"] )
name = "dev-${each.value}"
zone         = "${each.value}"
machine_type = "${var.instance_type}"
boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      }
  }
 network_interface {
    network = "default"
    access_config {
      # Allocate a one-to-one NAT IP to the instance
      nat_ip = google_compute_address.vm_static_ip.address
    }
  }
}

