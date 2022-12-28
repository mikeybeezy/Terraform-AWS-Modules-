variable "ami" {
  type    = string
  default = "ami-0fe0b2cf0e1f25c8a"


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
