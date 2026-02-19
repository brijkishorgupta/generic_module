data "azurerm_mssql_server" "DB" {

for_each = var.databases
  name                = each.value.db-server-name
  resource_group_name = each.value.resource_group_name
}