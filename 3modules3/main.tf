provider "google" {
  region = "us-central-1"

}

module "environments_dev" {
  source = "./environments/dev"
  vm_count = var.vm_count_dev

}

module "environments_prod" {
  source = "./environments/production"
  vm_count = var.vm_count_prod

}

module "environments_test" {
  source = "./environments/test"
  vm_count = var.vm_count_test

}