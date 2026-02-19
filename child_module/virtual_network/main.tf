resource "azurerm_virtual_network" "vnet" {
for_each = var.vnet
    name = each.value.vnet-name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  address_space = each.value.address_space

 dynamic "subnet" {
    for_each = each.value.subnet
    content {
      name = subnet.value.subnet-name
      address_prefixes = subnet.value.address_prefixes
    }
   
 }


}