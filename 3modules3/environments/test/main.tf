module "test-server" {
    source = "../../server/"
    instance_zone = "us-central1-a"
    instance_name = "test-vm"
    vm_count = 2
}