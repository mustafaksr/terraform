module "prod-server" {
    source = "../../server/main.tf"
    instance_zone = "us-central1-a"
    instance_name = "prod-vm"
    vm_count = 5
}