provider "google" {
    region = "us-central-1"
  
}
module "environments" {
    source = "./environments"

}