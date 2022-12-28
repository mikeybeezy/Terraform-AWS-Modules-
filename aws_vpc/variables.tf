variable "vpc_cidr_block" {
  description = "vpc cidr"
  type        = string
  default     = "172.16.0.0/16"
}


variable "vpc_tags" {
  type = map(any)
  default = {
    "Name" = "Dev VPC"
  }
}
