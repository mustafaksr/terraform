variable "project" {
    type = string
    description = "Project id"
    default = "civic-access-350318"
  
}
variable "instance_name" {
  type        = string
  description = "Name for the Google Compute instance"
  default = "VM-example0"
}
variable "instance_zone" {
  type        = string
  description = "Zone for the Google Compute instance"
  default = "us-central1-a"

}

variable "instance_region" {
  type        = string
  description = "Region for the Google Compute instance"
  default = "us-central1"
}
variable "instance_type" {
  type        = string
  description = "Disk type of the Google Compute instance"
  default     = "e2-medium"
  }