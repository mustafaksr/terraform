variable "region" {
 default = "us-east1"
}
variable "zone" {
 default = "us-east1-d"
}
variable "bucket-name" {
  description = "The name of the bucket."
  type        = string
}
variable "project_id" {
    type        = string
    description = "Enter your cloud project id"
}
variable "tf_vpc_network" {
    type        = string
    description = "Enter name for vpc network"
}
