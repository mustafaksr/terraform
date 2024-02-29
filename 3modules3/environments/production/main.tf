module "prod-server" {
    source = "../../server/"
    instance_zone = "us-central1-a"
    instance_name = "prod-vm"
    vm_count = var.vm_count
}