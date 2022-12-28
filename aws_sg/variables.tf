variable "vpc_id" {
  type = string
}


variable "sg_name" {
  type        = string
  description = ""
}

variable "sg_tags" {
  type = map(any)
  default = {
    "Name" = "allow tls"
  }
}
