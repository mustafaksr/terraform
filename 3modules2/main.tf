provider "google" {
    region = "us-central-1"
  
}
module "web_server" {
    source = "./server"
    instance_name = "instance0"
    instance_zone = "us-central1-a"
}

module "web_server1" {
    source = "./server"
    instance_name = "instance1"
    instance_zone = "us-east1-a"
}

module "server_network" {
    source = "./network"
    network_name = "my-networks0"
}

module "dev_network1" {
    source = "./network"
    network_name =  "my-network1"
}

module "storage" {
    source = "./storage"
    bucket_name =  "bucket_example"
}

module "storage1" {
    source = "./storage"
    bucket_name =  "bucket_example1"
}