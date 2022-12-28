#VPC

variable "vpc_cidr_block" {
  description = "vpc cidr"
  type        = string
  default     = "10.0.0.0/16"
}


variable "vpc_tags" {
  type = map(any)
  default = {
    "Name" = "Dev VPC"
  }
}


#SUBNET
variable "subnet_cidr_block" {
  description = "vpc cidr"
  type        = string
  default     = "10.0.1.0/24"
}


variable "subnet_tags" {
  description = "subnet tags"
  type        = map(any)
  default = {
    "Name" = "subnet"
  }
}



# security_group

variable "sg_name" {
  type        = string
  description = ""
  default     = "defauklt security group"
}

variable "sg_tags" {
  type = map(any)
  default = {
    "Name" = "allow tls"
  }
}
#


variable "nic_name" {
  type        = string
  description = ""
  default     = "main_nic "
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

variable "region" {
  default = "eu-west-1"
}
variable "access_key" {}

variable "secret_key" {}
