# output "network_IP" {
#   value = google_compute_instance.vm_instance.instance_id
#   description = "The internal ip address of the instance"
# }
# output "instance_link" {
#   value = google_compute_instance.vm_instance.self_link
#   description = "The URI of the created resource."
# }

output "network_IP" {
  value = google_compute_instance.vm_instance[*].network_interface.0.network_ip
  description = "The internal IP address of all instances"
}

output "instance_links" {
  value = google_compute_instance.vm_instance[*].self_link
  description = "The URIs of all created resources."
}