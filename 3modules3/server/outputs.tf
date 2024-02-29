output "server_output" {

  value = google_compute_instance.vm_instance[*].self_link
  description = "created intance self link"
}