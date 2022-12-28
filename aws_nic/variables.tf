variable "subnet_id" {
  type = string
}


variable "nic_tags" {
  type = map(any)
  default = {
    "Name" = "my_network_interface"
  }
}


variable "private_ips" {
  type    = list(string)
  default = ["10.0.0.50"]
}
