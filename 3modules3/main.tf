provider "google" {
  region = "us-central-1"

}

module "environments_dev" {
  source = "./environments/dev"

}

module "environments_prod" {
  source = "./environments/production"

}

module "environments_test" {
  source = "./environments/test"

}