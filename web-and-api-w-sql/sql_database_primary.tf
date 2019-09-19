resource "azurerm_sql_database" "sql_database_primary" {
  name                        = "db-${var.sub_name}-${var.system_name}-${var.app_name}"
  location                    = "${azurerm_resource_group.rg1.location}"
  resource_group_name         = "${azurerm_resource_group.rg1.name}"
  server_name                 = "${azurerm_sql_server.sql_server_primary.name}"
}