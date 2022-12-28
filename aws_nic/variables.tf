variable "subnet_id" {
  type = string
}


variable "nic_tags" {
  type = map(any)
  default = {
    "Name" = "my_network_interface"
  }
}
