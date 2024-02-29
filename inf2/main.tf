terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.55.0"
    }
  }
}
module "storage" {
  source     = "./modules/storage"
}
module "instances" {

  source     = "./modules/instances"

}
module "databases" {
  source = "./modules/databases"
  
}

module "serverless" {
  source = "./modules/serverless"
  
}