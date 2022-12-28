resource "aws_network_interface" "main_network_interface" {
  subnet_id = var.subnet_id
  # private_ips = var.private_ips
  tags = var.nic_tags


}
