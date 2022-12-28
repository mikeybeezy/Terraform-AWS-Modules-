variable "ami" {
  type    = string
  default = "ami-005e54dee72cc1d00" # us-west-2

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


variable "instance_tags" {
  type = map(any)
  default = {
    "Name" = "Dev Server"
  }
}

variable "nic_id" {
  type = string
}
