module "dev-server" {
    source = "../../server/main.tf"
    instance_zone = "us-central1-a"
    instance_name = "dev-vm"
    vm_count = 3
}