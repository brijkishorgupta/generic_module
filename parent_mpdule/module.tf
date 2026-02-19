module "Resource_group" {
  source = "../child_module/Resource_group"
  rgs    = var.rgs
}
module "Storage_account" {
  depends_on = [module.Resource_group]
  source     = "../child_module/Storage_account"
  stg        = var.stg
}
module "virtual_network" {

  depends_on = [module.Resource_group]
  source     = "../child_module/virtual_network"
  vnet       = var.vnet
}
module "public_ip" {
  depends_on = [module.Resource_group, module.virtual_network]
  source     = "../child_module/public_pip"
  pip        = var.pip
}
module "network_interface" {
  depends_on = [module.Resource_group, module.virtual_network, module.public_ip, module.virtual_network]
  source     = "../child_module/network_interface"
  nic        = var.nic
}
module "virtual_machine" {
  depends_on = [module.Resource_group, module.virtual_network, module.public_ip, module.network_interface]
  source     = "../child_module/virtual_machine"
  vm        = var.vm
}
module "db_server" {
  depends_on = [module.Resource_group, module.virtual_network, module.public_ip, module.network_interface]
  source     = "../child_module/db_server"
  db_server  = var.db_server
}
module "database" {
  depends_on = [module.Resource_group, module.virtual_network, module.public_ip, module.network_interface, module.db_server]
  source     = "../child_module/database"
  databases  = var.databases
}
# module "bastion" {
#   depends_on = [module.Resource_group, module.virtual_network, module.public_ip]
#   source     = "../child_module/bastion"
#   bastion    = var.bastion
# }
module "key_vault" {
  depends_on = [module.Resource_group, module.virtual_network, module.public_ip]
  source     = "../child_module/key_vault"
  key_vault  = var.key_vault
}