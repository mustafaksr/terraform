terraform {
#   backend "gcs" {
#     bucket  = "tf-bucket-standard"
#     prefix  = "terraform/state"
#   }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.55.0"
    }
  }
}
module "instances" {

  source     = "./modules/instances"

}
module "storage" {
  source     = "./modules/storage"
}
module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.4.0"

    project_id   = "${var.project_id}"
    network_name = "${var.tf_vpc_network}"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-east1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-east1"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
        },
    ]
}
resource "google_compute_firewall" "tf-firewall"{
  name    = "tf-firewall"
  network = "projects/'${var.project_id}'/global/networks/'${var.tf_vpc_network}'"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["web"]
  source_ranges = ["0.0.0.0/0"]
}