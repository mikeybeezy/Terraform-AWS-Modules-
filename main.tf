# VPC

module "vpc" {
  source         = "./aws_vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tags       = var.vpc_tags
}


# SUBNET
module "subnet" {
  source            = "./aws_subnet"
  vpc_id            = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
  subnet_tags       = var.subnet_tags
}


#SECURITY  GROUP
module "security_group" {
  source  = "./aws_sg"
  sg_name = var.sg_name
  vpc_id  = module.vpc.vpc_id
  sg_tags = var.sg_tags
}


# NIC
module "nic" {
  source    = "./aws_nic"
  subnet_id = module.subnet.subnet_id
  nic_tags  = var.nic_tags
}


#EC2  INSTANCE
module "instance" {
  source        = "./aws_instance"
  ami           = var.ami
  instance_type = var.instance_type
  instance_tags = var.instance_tags
  nic_id        = module.nic.nic_id

}
