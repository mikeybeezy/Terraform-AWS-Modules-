resource "aws_network_interface" "main_network_interface" {
  subnet_id = var.subnet_id
  tags      = var.nic_tags


}
