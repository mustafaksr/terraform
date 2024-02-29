variable "project" {
    type = string
    description = "project id"
    default = "civic-access-350318"
}

variable "instance_name" {
    description = "vm name"
}
variable "instance_zone" {
    type = string
    description = "VM zone"
  
}

variable "instance_type" {
    default = "e2-medium"
  
}