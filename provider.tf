provider "aws" {
  region  = "eu-west-1"
  profile = "myaws"
}


variable "instance_config" {
  type = map(any)
}
