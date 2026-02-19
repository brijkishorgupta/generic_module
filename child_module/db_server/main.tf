resource "azurerm_mssql_server" "db-server" {

    for_each = var.db_server
  name                         = each.value.db-server-name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"

}