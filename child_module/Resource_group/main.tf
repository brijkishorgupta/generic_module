resource "azurerm_resource_group" "rgs" {
  for_each = var.rgs
  name     = each.value.rg-name
  location = each.value.location
}
